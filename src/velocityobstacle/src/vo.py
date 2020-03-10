#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Point, Twist, Quaternion
from mtt.msg import TargetList
from visualization_msgs.msg import Marker


class VO:
    def __init__(self):
        rospy.Subscriber("targets", TargetList, self.getDataCallback)

    def getDataCallback(self, msg):
        for i in range(len(msg.Targets)):
            alvo = msg.Targets[i]
            Target(alvo)

class Target:
    def __init__(self,VO):
        self.id = VO.alvo.id
        self.velocidade = Twist()
        self.posicao = Point()
        self.orientacao = Quaternion()

        self.velocidade.linear = VO.alvo.velocity
        self.posicao.x = VO.alvo.pose.position.x
        self.posicao.y = VO.alvo.pose.position.y
        self.posicao.z = VO.alvo.pose.position.z
        self.orientacao.x = VO.alvo.pose.orientation.x
        self.orientacao.y = VO.alvo.pose.orientation.y
        self.orientacao.z = VO.alvo.pose.orientation.z
        self.orientacao.w = VO.alvo.pose.orientation.w

        Markers(self)
        # print("IM AT TARGET")

class Markers:
    def __init__(self,Target):
        self.start_point = Target.posicao
        self.end_point = Point()
        self.cone = Marker(ns="Alvo", id=Target.id, type=Marker.LINE_LIST, action=Marker.ADD)
        self.cone.header.frame_id = "left_laser"
        self.cone.header.stamp = rospy.Time.now()
        self.cone.color.a = 1.0
        self.cone.color.r = 0.0
        self.cone.color.g = 0.0
        self.cone.color.b = 1.0
        self.cone.scale.x = 0.1
        self.end_point.x = 0.0
        self.end_point.y = 0.0
        self.end_point.z = 0.0

        self.cone.points.append(self.start_point)
        self.cone.points.append(self.end_point)


        self.publisher_marker = rospy.Publisher('/cone', Marker, queue_size=1000 )

        self.pubublisher_marker.publish(self.cone)
        # print("IM here")





if __name__ == '__main__':
    rospy.init_node('vo', anonymous=False)
    print("Velocity Obstacle running")
    VO()
    rospy.spin()
