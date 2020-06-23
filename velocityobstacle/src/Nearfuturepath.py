#!/usr/bin/env python
import numpy
import rospy
from atlascar2.msg import NominalData
from geometry_msgs.msg import Point, Vector3
from velocityobstacle.msg import Collision, CollisionList, Telemetry
from visualization_msgs.msg import Marker


def AngularVelocity(velo,radius):
    targetsrate = 0.07
    velocity = velo *1000/float(3600)
    velocityperscan = velocity * targetsrate

    angularvelocityperscan =numpy.deg2rad((velocityperscan / (2*numpy.pi*radius))*360)

    # print(angularvelocityperscan)
    return angularvelocityperscan

def markervelocity(velocity):

    scale = (1000/float(3600))*0.5
    velo= Marker(ns="velocity",id=1, type=Marker.ARROW, action=Marker.ADD)
    velo.header.frame_id = "base_link"
    velo.header.stamp = rospy.Time.now()
    velo.color.a = 0.8
    velo.color.r = 1.0
    velo.color.g = 0.0
    velo.color.b = 0.0
    velo.scale.x = 0.1
    velo.scale.y = 0.2
    velo.scale.z = 0.3
    origin = Point()
    origin.x, origin.y, origin.z = 0, 0, 0

    velocity.x=velocity.x * scale
    velocity.y=velocity.y *scale
    # print(numpy.cos(numpy.rad2deg(centerangle)))
    velo.points.append(origin)
    velo.points.append(velocity)
    # print(str(numpy.rad2deg(centerangle))+" cos: "+str(numpy.cos(centerangle))+" sin: " + str(numpy.sin(centerangle)))

    return velo

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

def markerpath(vel,radius,center_point,startangle, angvel):
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
            p = Point()
            p.z = 0
            p.x = center_point.x + radius * numpy.cos(theta)
            p.y = center_point.y + radius * numpy.sin(theta)
            path.points.append(p)

    elif center_point.y > 0: #virar para a esquerda
        for theta in numpy.linspace(-numpy.pi / 2 + startangle,-numpy.pi / 2 + startangle + angvel*sizefactor, num=100):
            p = Point()
            p.z = 0
            p.x = center_point.x + radius * numpy.cos(theta)
            p.y = center_point.y + radius * numpy.sin(theta)
            path.points.append(p)

    else:
        p = Point()
        p.z = 0
        p.x=vel*(1000/float(3600))*0.5
        p.y=0
        origin=Point()
        origin.x=0
        origin.y = 0
        path.points.append(origin)
        path.points.append(p)



    return path

class PathCalc:
    def __init__(self):
        # print(" ")
        rospy.Subscriber("NominalData", NominalData, self.TurningCircleRadius)
        # rospy.Subscriber("collision", CollisionList, self.TargetCallback)
        self.publisher_path = rospy.Publisher('/path', Marker, queue_size=1)
        self.publisher_line = rospy.Publisher('/line', Marker, queue_size=1)
        self.publisher_velo = rospy.Publisher('/velocity', Marker, queue_size=1)
        self.publisher_telemetry = rospy.Publisher('/Telemetry', Telemetry, queue_size=10)

    def MakePathTopic(self):
        self.telemetrytopic=Telemetry()
        self.telemetrytopic.header.stamp = rospy.Time.now()
        self.telemetrytopic.Direction = self.heading
        self.telemetrytopic.OuterWheelAngle = self.outerwheelangle
        self.telemetrytopic.InnerWheelAngle = self.innerwheelangle
        self.telemetrytopic.CenterAngle = self.centerangle
        self.telemetrytopic.TurningCenterPoint=self.turningcenter
        self.telemetrytopic.TurningCenterDistance=self.turningcenterdistance
        self.telemetrytopic.Velocity.linear=self.velocity
        self.telemetrytopic.Velocity.angular.z=self.carangvel



    def TargetCallback(self,msg):
        for target in msg.collisions:
            id = target.target
            centroid = target.targetcentroid
            distancecenter2target = numpy.sqrt(pow(centroid.position.x-self.turningcenter.x,2)+pow(centroid.position.y-self.turningcenter.y,2))
            targetangvel = AngularVelocity(self.carvelocity,distancecenter2target)
            # print("id:" + str(id) +" distance:"+str(distancecenter2target)+ " targetangvel:" + str(targetangvel) +" dist: "+ str(self.turningcenterdistance) +" carangvel:" + str(self.carangvel))

    def TurningCircleRadius(self,msg):
        wheelbase = 2.550
        width = 1.475
        innersteeringratio = 635 / float(45)
        outersteeringratio = 635 / float(38)
        frontoverhang = 0.500
        self.outerwheelangle = numpy.deg2rad(abs(msg.orientation) / outersteeringratio)
        self.innerwheelangle = msg.orientation / innersteeringratio
        self.carvelocity = msg.velocity
        # print("  ")
        # print("outer wheel angle: " + str(outerwheelangle))

        if self.outerwheelangle != 0:
            # Base_link
            x = wheelbase / numpy.tan(self.outerwheelangle) - width
            self.centerangle = numpy.arctan((wheelbase + frontoverhang) / ((width / 2) + x))

            # print("x: " + str(x))
            # print("center angle: " + str(centerangle))
            self.turningcenterdistance = (wheelbase + frontoverhang) / numpy.sin(self.centerangle)
            # print("turning distance: " + str(turningcenterdistance))
            self.turningcenter = Point()
            self.turningcenter.x = - (wheelbase + frontoverhang)
            self.turningcenter.z = 0
            # print("sin centerangle: " + str(numpy.sin(centerangle)))
            if msg.orientation > 0:  # virar para a esquerda
                self.turningcenter.y = (width / 2) + x
                turning="left"

            elif msg.orientation < 0:  # virar para a direita
                self.turningcenter.y = -(width / 2) - x
                turning = "right"
                self.outerwheelangle=-self.outerwheelangle

            # Measured from the most distant point of the car
            realturningcenterdistance = numpy.sqrt(pow(wheelbase + frontoverhang, 2) + pow(x + width, 2))

            line = markerline(self.turningcenter)
            self.carangvel = AngularVelocity(self.carvelocity, self.turningcenterdistance)
            path = markerpath(self.carvelocity, self.turningcenterdistance, self.turningcenter, self.centerangle, self.carangvel)
            self.publisher_line.publish(line)


        else:
            turning="forward"
            self.turningcenter=Point(None,None,None)
            self.carangvel=0.0
            self.centerangle=0.0
            self.turningcenterdistance=0.0
            path = markerpath(self.carvelocity,0,self.turningcenter,self.centerangle, self.carangvel)


        self.velocity = Vector3()
        if turning == "left":
            self.velocity.x = self.carvelocity * numpy.cos(self.centerangle)
            self.velocity.y = self.carvelocity * numpy.sin(self.centerangle)
        else:
            self.velocity.x = self.carvelocity * numpy.cos(self.centerangle)
            self.velocity.y = self.carvelocity * -numpy.sin(self.centerangle)
            self.centerangle = -self.centerangle

        self.velocity.z = 0.0
        velocityvector = markervelocity(self.velocity)

        if turning=="left" and self.carangvel > 0.01:
            self.heading="left"
        elif turning=="right" and self.carangvel > 0.01:
            self.heading="right"
        else:
            self.heading="forward"

        self.MakePathTopic()

        self.publisher_path.publish(path)
        self.publisher_velo.publish(velocityvector)
        self.publisher_telemetry.publish(self.telemetrytopic)






if __name__ == '__main__':
    rospy.init_node("nearfuturepath", anonymous=False)
    print("Near Future Path initialized")
    PathCalc()
    rospy.spin()