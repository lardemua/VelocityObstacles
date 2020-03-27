#!/usr/bin/env python
import rospy
import numpy
from geometry_msgs.msg import Point, Twist, Quaternion
from mtt.msg import TargetList
from visualization_msgs.msg import Marker, MarkerArray


def EuclideanDistance(point1,point2):
        return numpy.sqrt(pow(point1.x-point2.x,2)+pow(point1.y-point2.y,2))

class Target:
    def __init__(self,alvo,cardiameter):
        self.id = alvo.id
        self.velocity = alvo.velocity
        self.centroid = alvo.pose
        self.firstpoint = alvo.initialpose
        self.lastpoint = alvo.finalpose
        self.targetdiameter = EuclideanDistance(self.lastpoint,self.firstpoint)
        self.cardiameter = cardiameter

        self.vcdiameter = self.cardiameter+self.targetdiameter




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


    def MakeCone(self,Target):
        first_point = Target.firstpoint
        last_point = Target.lastpoint
        center_point = Point()
        cone = Marker(ns="Cone", id=Target.id, type=Marker.LINE_LIST, action=Marker.ADD)
        cone.header.frame_id = "left_laser"
        cone.header.stamp = rospy.Time.now()
        cone.color.a = 0.8
        cone.color.r = 0.0
        cone.color.g = 0.0
        cone.color.b = 1.0
        cone.scale.x = 0.1
        center_point.x = 0.0
        center_point.y = 0.0
        center_point.z = 0.0
        cone.points.append(first_point)
        cone.points.append(center_point)
        cone.points.append(last_point)
        cone.points.append(center_point)

        return cone

    def MakeCircle(self,Target):
        center_point = Target.centroid
        diameter = Target.vcdiameter
        circle = Marker(ns = "Circle", id=Target.id, type=Marker.CYLINDER, action=Marker.ADD)
        circle.header.frame_id = "left_laser"
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
        self.marker_list = MarkerArray()
        rospy.Subscriber("targets", TargetList, self.getDataCallback)
        rospy.Subscriber("targets_markers", MarkerArray, self.getColorMarker)
        self.publisher_marker = rospy.Publisher('/cone', MarkerArray, queue_size=1000)
        self.markers = Markers()
        self.cardiameter=3.77

    def getColorMarker(self,msg):
        color = []
        colorid = []
        for i in msg.markers:
            color.append(i.color)
            colorid.append(i.id)


    def getDataCallback(self, msg):
        targetlist=[]

        for i in msg.Targets:
            target = Target(i,self.cardiameter)
            targetlist.append(target.id)
            # cone = self.markers.MakeCone(target)
            circle = self.markers.MakeCircle(target)

            # self.markers.update(cone, self.marker_list)
            self.markers.update(circle,self.marker_list)

        self.markers.clean(self.marker_list, targetlist)
        self.publisher_marker.publish(self.marker_list)


if __name__ == '__main__':
    rospy.init_node('vo', anonymous=False)
    print("Velocity Obstacle running")
    VO()
    rospy.spin()
