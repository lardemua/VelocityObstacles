#!/usr/bin/env python
import numpy
import rospy
from atlascar2.msg import NominalData
from geometry_msgs.msg import Point
from visualization_msgs.msg import Marker


def AngularVelocity(velo,radius):
    targetsrate = 0.07
    velocity = velo *1000/float(3600)
    velocityperscan = velocity * targetsrate
    angularvelocityperscan =numpy.deg2rad((velocityperscan / (2*numpy.pi*radius))*360)
    print(angularvelocityperscan)
    return angularvelocityperscan


def markerline(center):
    line = Marker(ns="line", id=1, type=Marker.LINE_STRIP, action=Marker.ADD)
    line.header.frame_id = "base_link"
    line.header.stamp = rospy.Time.now()
    line.color.a = 0.8
    line.color.r = 1.0
    line.color.g = 0.0
    line.color.b = 0.0
    line.scale.x = 0.1
    origin = Point()
    origin.x, origin.y, origin.z = -3.05,0,0
    line.points.append(origin)
    line.points.append(center)

    return line

def Markers(radius,center_point,startangle, angvel):
    sizefactor = 20

    path = Marker(ns="path", id=1, type=Marker.LINE_STRIP, action=Marker.ADD)
    path.header.frame_id = "base_link"
    path.header.stamp = rospy.Time.now()
    path.color.a = 0.6
    path.color.r = 0.0
    path.color.g = 0.0
    path.color.b = 1.0
    path.scale.x = 0.1
    path.scale.y = 0.1
    #virar para a direita
    if center_point.y < 0:
        for theta in numpy.linspace(numpy.pi / 2-startangle, numpy.pi / 2-startangle - angvel*sizefactor,num=100):
            p=Point()
            p.x = center_point.x + radius * numpy.cos(theta)
            p.y = center_point.y + radius * numpy.sin(theta)
            p.z = 0
            path.points.append(p)
    else: #virar para a esquerda
        for theta in numpy.linspace(-numpy.pi / 2 + startangle,-numpy.pi / 2 + startangle + angvel*sizefactor, num=100):
            p = Point()
            p.x = center_point.x + radius * numpy.cos(theta)
            p.y = center_point.y + radius * numpy.sin(theta)
            p.z = 0
            path.points.append(p)
    return path

def TurningCircleRadius(msg):
    wheelbase = 2.550
    width = 1.475
    innersteeringratio = 635/float(45)
    outersteeringratio = 635/float(38)
    frontoverhang = 0.500
    outerwheelangle = numpy.deg2rad(abs(msg.orientation)/outersteeringratio)
    innerwheelangle = msg.orientation/innersteeringratio
    # print("  ")
    # print("outer wheel angle: " + str(outerwheelangle))

    if outerwheelangle != 0:
        # Base_link
        x = wheelbase/numpy.tan(outerwheelangle)-width
        centerangle = numpy.arctan((wheelbase+frontoverhang)/((width/2)+x))

        # print("x: " + str(x))
        # print("center angle: " + str(centerangle))
        turningcenterdistance = (wheelbase+frontoverhang)/numpy.sin(centerangle)
        # print("turning distance: " + str(turningcenterdistance))
        turningcenter = Point()
        turningcenter.x = - (wheelbase+frontoverhang)
        turningcenter.z = 0
        # print("sin centerangle: " + str(numpy.sin(centerangle)))
        if msg.orientation > 0: #virar para a esquerda
            turningcenter.y = (width/2)+x
        elif msg.orientation < 0: #virar para a direita
            turningcenter.y = -(width/2)-x

        # print("x: " + str(turningcenter.x) + " y: " + str(turningcenter.y))

        # Measured from the outer wheel
        realturningcenterdistance = wheelbase/numpy.sin(outerwheelangle)


        angvel = AngularVelocity(msg.velocity, turningcenterdistance)

        path = Markers(turningcenterdistance,turningcenter,centerangle, angvel)
        line = markerline(turningcenter)
        publisher_path.publish(path)
        publisher_line.publish(line)


if __name__ == '__main__':
    rospy.init_node("nearfuturepath", anonymous=False)
    print("Near Future Path initialized")
    while not rospy.is_shutdown():
        rospy.Subscriber("NominalData",NominalData, TurningCircleRadius)
        publisher_path = rospy.Publisher('/path', Marker, queue_size=1)
        publisher_line = rospy.Publisher('/line', Marker, queue_size=1)
        rospy.spin()