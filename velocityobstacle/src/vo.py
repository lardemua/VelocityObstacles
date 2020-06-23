#!/usr/bin/env python
import sys
import time

import rospy
import numpy
import tf
from geometry_msgs.msg import Point, PointStamped, PoseStamped, Vector3Stamped
from mtt.msg import TargetList
from velocityobstacle.msg import Collision, CollisionList, Telemetry
from visualization_msgs.msg import Marker, MarkerArray


def EuclideanDistance(point1,point2):
        return numpy.sqrt(pow(point1.x-point2.x,2)+pow(point1.y-point2.y,2))


class Target:

    def CreateStampedObject(self,object):
        if object._type == "geometry_msgs/Pose":
            stampedObject = PoseStamped()
            stampedObject.pose = object


        elif object._type == "geometry_msgs/Point":
            stampedObject = PointStamped()
            stampedObject.point = object

        elif object._type == "geometry_msgs/Vector3":
            stampedObject = Vector3Stamped()
            stampedObject.vector = object
        else:
            rospy.logwarn("msg type not found")
            return





        stampedObject.header.frame_id = self.frame_id
        stampedObject.header.stamp = rospy.Time.now()

        return stampedObject

    def CalculateTransformedPoints(self):

        tf_listener=tf.TransformListener()
        try:
            tf_listener.waitForTransform(self.frame_id,"base_link",rospy.Time(0),rospy.Duration(4.0))
        except:
            rospy.logwarn("No transform found")
            return 0


        Stamped_firstpoint = self.CreateStampedObject(self.firstpoint)
        Stamped_lastpoint = self.CreateStampedObject(self.lastpoint)
        Stamped_centroid = self.CreateStampedObject(self.centroid)
        Stamped_velocity = self.CreateStampedObject(self.velocity.linear)



        Stamped_velocity = tf_listener.transformVector3("base_link", Stamped_velocity)
        Stamped_firstpoint = tf_listener.transformPoint("base_link", Stamped_firstpoint)
        Stamped_lastpoint = tf_listener.transformPoint("base_link", Stamped_lastpoint)
        Stamped_centroid = tf_listener.transformPose("base_link", Stamped_centroid)

        self.centroid = Stamped_centroid.pose
        self.firstpoint = Stamped_firstpoint.point
        self.lastpoint = Stamped_lastpoint.point
        self.velocity.linear = Stamped_velocity.vector


    def CalculateTangentPoints(self):
        target = self.centroid.position
        self.tangentpoint1 = Point()
        self.tangentpoint2 = Point()
        self.apex_point = Point()
        self.apex_point.x = 0.0
        self.apex_point.y = 0.0
        self.apex_point.z = 0.0

        target2car = EuclideanDistance(target,self.apex_point)
        targetradius = self.vcdiameter/2

        car2tangent = numpy.sqrt(pow(target2car,2)-pow(targetradius,2))

        tangent2target_angle = numpy.arcsin(targetradius/target2car)
        target2car_angle = numpy.arctan2(target.y-self.apex_point.y, target.x-self.apex_point.x)
        self.tangentline1 = target2car_angle + tangent2target_angle
        self.tangentline2 = target2car_angle - tangent2target_angle


        self.tangentpoint2.x = numpy.cos(self.tangentline2)*car2tangent
        self.tangentpoint2.y = numpy.sin(self.tangentline2)*car2tangent
        self.tangentpoint2.z = 0

        self.tangentpoint1.x = numpy.cos(self.tangentline1) * car2tangent
        self.tangentpoint1.y = numpy.sin(self.tangentline1) * car2tangent
        self.tangentpoint1.z = 0

    def AbsoluteVelocityPoints(self):

        self.apex_point.x , self.apex_point.y , self.apex_point.z = self.apex_point.x + self.velocity.linear.x, self.apex_point.y + self.velocity.linear.y, self.apex_point.z + self.velocity.linear.z
        self.tangentpoint1.x , self.tangentpoint1.y, self.tangentpoint1.z  = self.tangentpoint1.x + self.velocity.linear.x, self.tangentpoint1.y + self.velocity.linear.y, self.tangentpoint1.z + self.velocity.linear.z
        self.tangentpoint2.x , self.tangentpoint2.y, self.tangentpoint2.z  = self.tangentpoint2.x + self.velocity.linear.x, self.tangentpoint2.y + self.velocity.linear.y, self.tangentpoint2.z + self.velocity.linear.z

    def __init__(self,alvo,cardiameter,count):
        count=count+1
        self.cnt=count
        self.frame_id = alvo.header.frame_id
        self.id = alvo.id

        self.collision = False
        self.timetocollision = None

        self.velocity = alvo.velocity
        self.centroid = alvo.pose
        self.firstpoint = alvo.initialpose
        self.lastpoint = alvo.finalpose
        self.minimumdistance = alvo.minimumdistance

        self.CalculateTransformedPoints()


        self.targetdiameter = EuclideanDistance(self.lastpoint,self.firstpoint)
        self.vcdiameter = cardiameter+self.targetdiameter

        self.CalculateTangentPoints()
        # print("target: " +str(self.id) + " distance: " + str(numpy.sqrt(pow(self.centroid.position.x,2)+pow(self.centroid.position.y,2))) + " velocity: " + str(numpy.sqrt(pow(self.velocity.linear.x,2)+pow(self.velocity.linear.y,2))*3.6))


class Markers:

    def colorupdate(self, marker, colorlist):
        for i in colorlist:
            if i[0] == marker.id:
                marker.color = i[1]
                marker.color.a = 0.6
                break

    def MakeMarkers(self,Target,colormarker):

        self.marker_list = MarkerArray()
        scale=-1.0
        velvector = Marker(ns="Vel", id=Target.id, type=Marker.ARROW, action=Marker.ADD)
        velvector.lifetime = rospy.Duration(0.5)
        velvector.header.frame_id = "base_link"
        velvector.header.stamp = rospy.Time.now()
        velvector.color.a = 0.8
        velvector.color.r = 0.0
        velvector.color.g = 0.0
        velvector.color.b = 1.0
        velvector.scale.x = 0.1
        velvector.scale.y = 0.2
        velvector.scale.z = 0.3
        origin = Point()
        origin.x, origin.y, origin.z = 0, 0, 0
        vel=Point(Target.velocity.linear.x*scale,Target.velocity.linear.y*scale,Target.velocity.linear.z*scale)

        velvector.points.append(origin)
        velvector.points.append(vel)

        self.marker_list.markers.append(velvector)



        cone = Marker(ns="Cone", id=Target.id, type=Marker.LINE_LIST, action=Marker.ADD)
        cone.lifetime=rospy.Duration(0.5)
        cone.header.frame_id = "base_link"
        cone.header.stamp = rospy.Time.now()
        cone.color.a = 0.8
        cone.color.r = 0.0
        cone.color.g = 0.0
        cone.color.b = 1.0
        cone.scale.x = 0.1
        cone.points.append(Target.tangentpoint1)
        cone.points.append(Target.apex_point)
        cone.points.append(Target.tangentpoint2)
        cone.points.append(Target.apex_point)

        self.marker_list.markers.append(cone)




        center_point = Target.centroid
        diameter = Target.vcdiameter
        circle = Marker(ns = "Circle", id=Target.id, type=Marker.CYLINDER, action=Marker.ADD)
        circle.lifetime = rospy.Duration(0.5)
        circle.header.frame_id = "base_link"
        circle.header.stamp = rospy.Time.now()
        circle.color.a = 0.6
        circle.color.r = 0.0
        circle.color.g = 0.0
        circle.color.b = 1.0
        circle.scale.x = diameter
        circle.scale.y = diameter
        circle.scale.z = 0.01
        circle.pose = center_point

        self.marker_list.markers.append(circle)

        self.colorupdate(circle, colormarker)
        self.colorupdate(velvector, colormarker)
        self.colorupdate(cone, colormarker)

        return  self.marker_list

class VO:
    def __init__(self):
        self.count = 0
        self.timesum = 0

        self.gottelemetry=False
        self.colormarker=[]

        self.cardiameter=1.5
        self.markers = Markers()

        rospy.Subscriber("targets_markers", MarkerArray, self.getColorMarker,queue_size=1)
        rospy.Subscriber("Telemetry", Telemetry, self.Egomotion,queue_size=1)
        rospy.Subscriber("targets", TargetList, self.getDataCallback,queue_size=1)
        self.publisher_marker = rospy.Publisher('/cone', MarkerArray, queue_size=1)
        self.publisher_collision = rospy.Publisher('/collision', CollisionList, queue_size=10)



    def MakeCollisionTopic(self,target):
        self.collisiontopic = Collision()
        self.collisiontopic.header.stamp = rospy.Time.now()
        self.collisiontopic.target = target.id
        self.collisiontopic.colliding = target.collision
        self.collisiontopic.timetocollision = target.timetocollision
        self.collisiontopic.targetcentroid = target.centroid
        self.collisiontopic.targetvelocity = target.velocity

        self.collisionlist.collisions.append(self.collisiontopic)

    def ColisionCheck(self,target):

        velocity_angle = numpy.arctan2(-target.velocity.linear.y,-target.velocity.linear.x)

        if velocity_angle < target.tangentline1 and velocity_angle > target.tangentline2:

            # print("id" + str(target.id) + " vangle: " + str(velocity_angle) + " velocity: " + str(-target.velocity.linear.x) + " " + str(-target.velocity.linear.y))
            # print("tg1: " + str(target.tangentline1))
            # print("tg2: " + str(target.tangentline2))
            target.collision = True
            distancetotarget = target.minimumdistance
            velocitymodule = numpy.sqrt(pow(target.velocity.linear.x,2)+pow(target.velocity.linear.y,2)+pow(target.velocity.linear.z,2))
            target.timetocollision = distancetotarget/velocitymodule
            # print("Target: " + str(target.id) + " colliding in:"+str(target.timetocollision))
            self.MakeCollisionTopic(target)
            # print("Target: " + str(target.id) +" velocity: " + str(velocitymodule))

    def Egomotion(self,msg):
        self.gottelemetry=True
        self.heading = msg.Direction
        self.atlasvelocity=msg.Velocity
        print("lol")


    def getColorMarker(self,msg):
        self.colormarker = []
        for i in msg.markers:
            self.colormarker.append([i.id, i.color])


    def getDataCallback(self, msg):

        # timestart = time.time()
        self.collisionlist = CollisionList()
        # maxtimetarget = 0
        count=0
        print("loalda")



        for i in msg.Targets:
            if self.gottelemetry==True and self.heading != "forward":
                break

            timetarget = time.time()

            target = Target(i,self.cardiameter,count)
            count=target.cnt
            self.ColisionCheck(target)


            markers = self.markers.MakeMarkers(target, self.colormarker)


            if target.collision == True and target.timetocollision < 10.0:
                # elapsedtimetarget = time.time() - timetarget
                # if elapsedtimetarget > maxtimetarget:
                #     maxtimetarget = elapsedtimetarget
                self.publisher_marker.publish(markers)


        self.publisher_collision.publish(self.collisionlist)

        # elapsedtime = time.time()-timestart
        # self.timesum = self.timesum + elapsedtime

        # print("mean= " + str(self.timesum/self.count))
        # print("no targets: " + str(count) + " time: " + str(elapsedtime))
        # print("max time target: " + str(maxtimetarget))
        # print("elapsed time: " + str(1/elapsedtime))

if __name__ == '__main__':

    rospy.init_node('vo', anonymous=False)
    print("Velocity Obstacle running")
    VO()
    rospy.spin()
