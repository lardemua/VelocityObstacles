#!/usr/bin/env python
import rospy
import numpy
import math
import tf
from geometry_msgs.msg import Point, Twist, Quaternion, Vector3
from mtt.msg import TargetList
from visualization_msgs.msg import Marker, MarkerArray


def EuclideanDistance(point1,point2):
        return numpy.sqrt(pow(point1.x-point2.x,2)+pow(point1.y-point2.y,2))

def TransformMatrixBaseLink(tf_listener, target_name, my_name = "base_link",
                                    time=rospy.Time(0), max_time_to_wait=1.0):

    try:
        tf_listener.waitForTransform(my_name, target_name, time, rospy.Duration(max_time_to_wait))
        (trans, rot) = tf_listener.lookupTransform(my_name, target_name, time)

    except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException, tf.Exception):
        rospy.logwarn(my_name + ': Could not get transform from ' + my_name + ' to ' + target_name)
        return None

    matrix_trans = tf.transformations.translation_matrix((trans[0],
                                                          trans[1],
                                                          0))

    matrix_rot = tf.transformations.quaternion_matrix((rot[0],
                                                       rot[1],
                                                       rot[2],
                                                       rot[3]))

    MatrixBaseLink = numpy.matmul(matrix_trans,matrix_rot)

    return MatrixBaseLink



class Target:

    def CalculateTransformedPoints(self, MatrixBaseLink):
        # MUDAR ISTO PARA USAR transformPoint e transformPose

        translationmatrix_centroid = tf.transformations.translation_matrix((self.centroid.position.x, self.centroid.position.y, self.centroid.position.z))
        translationmatrix_firstpoint = tf.transformations.translation_matrix((self.firstpoint.x, self.firstpoint.y, self.firstpoint.z))
        translationmatrix_lastpoint = tf.transformations.translation_matrix((self.lastpoint.x, self.lastpoint.y, self.lastpoint.z))
        translationmatrix_velocity = tf.transformations.translation_matrix((self.velocity.linear.x, self.velocity.linear.y, self.velocity.linear.z))


        rotmatrix_centroid = tf.transformations.quaternion_matrix((self.centroid.orientation.x, self.centroid.orientation.y, self.centroid.orientation.z, self.centroid.orientation.w))

        matrix_centroid   = numpy.matmul(translationmatrix_centroid, rotmatrix_centroid)

        newmatrix_centroid = numpy.matmul(MatrixBaseLink, matrix_centroid)
        newmatrix_firstpoint = numpy.matmul(MatrixBaseLink, translationmatrix_firstpoint)
        newmatrix_lastpoint = numpy.matmul(MatrixBaseLink, translationmatrix_lastpoint)
        newmatrix_velocity = numpy.matmul(MatrixBaseLink, translationmatrix_velocity)

        translationcentroid = tf.transformations.translation_from_matrix(newmatrix_centroid)
        translationfirstpoint = tf.transformations.translation_from_matrix(newmatrix_firstpoint)
        translationlastpoint = tf.transformations.translation_from_matrix(newmatrix_lastpoint)
        translationvelocity = tf.transformations.translation_from_matrix(newmatrix_velocity)

        rotcentroid = tf.transformations.quaternion_from_matrix(newmatrix_centroid)

        self.centroid.orientation = Quaternion(rotcentroid[0],rotcentroid[1],rotcentroid[2],rotcentroid[3])
        self.centroid.position = Point(translationcentroid[0],translationcentroid[1],translationcentroid[2])

        self.firstpoint = Point(translationfirstpoint[0],translationfirstpoint[1],translationfirstpoint[2])
        self.lastpoint = Point(translationlastpoint[0],translationlastpoint[1],translationlastpoint[2])

        self.velocity.linear = Vector3(translationvelocity[0], translationvelocity[1], translationvelocity[2])


    def __init__(self,alvo,cardiameter, MatrixBaseLink):

        self.frame_id = alvo.header.frame_id
        self.id = alvo.id

        self.velocity = alvo.velocity
        self.centroid = alvo.pose
        self.firstpoint = alvo.initialpose
        self.lastpoint = alvo.finalpose

        self.CalculateTransformedPoints(MatrixBaseLink)

        self.targetdiameter = EuclideanDistance(self.lastpoint,self.firstpoint)

        self.vcdiameter = cardiameter+self.targetdiameter




class Markers:
    def update(self, marker, markerlist):
        for i in markerlist.markers:
            if i.ns == marker.ns and i.id == marker.id:
                markerlist.markers.remove(i)
                break
        markerlist.markers.append(marker)

    def clean(self, markerlist,targetlist):
        for i in markerlist.markers:
            if i.id not in targetlist:
                i.action = Marker.DELETE

    def colorupdate(self, marker, colorlist):
        for i in colorlist:
            if i[0] == marker.id:
                marker.color = i[1]
                marker.color.a = 0.6
                break


    def MakeCone(self,Target):
        target = Target.centroid.position
        first_point = Point()
        second_point = Point()
        car_point = Point()
        car_point.x = 0.0
        car_point.y = 0.0
        car_point.z = 0.0

        target2car = EuclideanDistance(target,car_point)
        targetradius = Target.vcdiameter/2

        car2tangent = numpy.sqrt(pow(target2car,2)-pow(targetradius,2))

        tangent2target_angle = numpy.arcsin(targetradius/target2car)
        target2car_angle = numpy.arctan2(target.y-car_point.y, target.x-car_point.x)
        tangent2car_angle = target2car_angle - tangent2target_angle
        tangent2car_angle2 = target2car_angle + tangent2target_angle


        first_point.x = numpy.cos(tangent2car_angle)*car2tangent
        first_point.y = numpy.sin(tangent2car_angle)*car2tangent
        first_point.z = 0

        second_point.x = numpy.cos(tangent2car_angle2) * car2tangent
        second_point.y = numpy.sin(tangent2car_angle2) * car2tangent
        second_point.z = 0

        cone = Marker(ns="Cone", id=Target.id, type=Marker.LINE_LIST, action=Marker.ADD)
        cone.header.frame_id = "base_link"
        cone.header.stamp = rospy.Time.now()
        cone.color.a = 0.8
        cone.color.r = 0.0
        cone.color.g = 0.0
        cone.color.b = 1.0
        cone.scale.x = 0.1
        cone.points.append(first_point)
        cone.points.append(car_point)
        cone.points.append(second_point)
        cone.points.append(car_point)

        return cone

    def MakeCircle(self,Target):
        center_point = Target.centroid
        diameter = Target.vcdiameter
        circle = Marker(ns = "Circle", id=Target.id, type=Marker.CYLINDER, action=Marker.ADD)
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

        return circle



class VO:
    def __init__(self):
        self.tf_listener=tf.TransformListener()
        self.MatrixBaseLink = TransformMatrixBaseLink(self.tf_listener,"left_laser")

        self.cardiameter=1.5
        self.marker_list = MarkerArray()
        self.Markers = Markers()

        rospy.Subscriber("targets", TargetList, self.getDataCallback)
        rospy.Subscriber("targets_markers", MarkerArray, self.getColorMarker)
        self.publisher_marker = rospy.Publisher('/cone', MarkerArray, queue_size=1000)




    def getColorMarker(self,msg):
        self.colormarker = []
        for i in msg.markers:
            self.colormarker.append([i.id, i.color])


    def getDataCallback(self, msg):
        targetlist=[]
        for i in msg.Targets:
            target = Target(i,self.cardiameter,self.MatrixBaseLink)
            targetlist.append(target.id)
            cone = self.Markers.MakeCone(target)
            circle = self.Markers.MakeCircle(target)

            self.Markers.update(cone, self.marker_list)
            self.Markers.update(circle,self.marker_list)
            self.Markers.colorupdate(circle,self.colormarker)

        self.Markers.clean(self.marker_list, targetlist)
        self.publisher_marker.publish(self.marker_list)


if __name__ == '__main__':
    rospy.init_node('vo', anonymous=False)
    print("Velocity Obstacle running")
    VO()
    rospy.spin()
