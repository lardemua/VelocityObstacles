#!/usr/bin/env python
import rospy
import tf
from geometry_msgs.msg import Twist, Pose, PoseStamped, PointStamped, Vector3Stamped, Point
from mtt.msg import Target, TargetList


class Dummie:

    def __init__(self, publisher):
        self.dummie = Target()
        self.dummie.header.frame_id = "left_laser"
        self.dummie.header.stamp = rospy.Time.now()

        self.centroid = Pose()
        self.centroid.position.x , self.centroid.position.y, self.centroid.position.z = 0, 5, 0
        self.centroid.orientation.x, self.centroid.orientation.y, self.centroid.orientation.z, self.centroid.orientation.w = 0, 0, 0, 1
        self.velocity = Twist()
        self.velocity.linear.x, self.velocity.linear.y, self.velocity.linear.z = 0, 0, 0
        self.velocity.angular.x, self.velocity.angular.y, self.velocity.angular.z = 0, 0, 0
        self.lastpoint = Point()
        self.lastpoint.x, self.lastpoint.y, self.lastpoint.z = 2, 5, 0
        self.firstpoint = Point()
        self.firstpoint.x, self.firstpoint.y, self.firstpoint.z = -2, 5, 0

        self.CalculateTransformedPoints()

        self.dummie.id = 1
        self.dummie.pose = self.centroid
        self.dummie.velocity = self.velocity
        self.dummie.finalpose = self.lastpoint
        self.dummie.initialpose = self.firstpoint

        publisher.publish([self.dummie])

    def CreateStampedObject(self, object):
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

        stampedObject.header.frame_id = "base_link"
        stampedObject.header.stamp = rospy.Time.now()

        return stampedObject


    def CalculateTransformedPoints(self):
        tf_listener = tf.TransformListener()
        tf_listener.waitForTransform("base_link", self.dummie.header.frame_id, rospy.Time(0), rospy.Duration(4.0))

        Stamped_firstpoint = self.CreateStampedObject(self.firstpoint)
        Stamped_lastpoint = self.CreateStampedObject(self.lastpoint)
        Stamped_centroid = self.CreateStampedObject(self.centroid)
        Stamped_velocity = self.CreateStampedObject(self.velocity.linear)

        Stamped_velocity = tf_listener.transformVector3("left_laser", Stamped_velocity)
        Stamped_firstpoint = tf_listener.transformPoint("left_laser", Stamped_firstpoint)
        Stamped_lastpoint = tf_listener.transformPoint("left_laser", Stamped_lastpoint)
        Stamped_centroid = tf_listener.transformPose("left_laser", Stamped_centroid)

        self.centroid = Stamped_centroid.pose
        self.firstpoint = Stamped_firstpoint.point
        self.lastpoint = Stamped_lastpoint.point
        self.velocity.linear = Stamped_velocity.vector



if __name__ == '__main__':
    rospy.init_node('DummyTargets', anonymous=False)
    rate = rospy.Rate(10)
    print("Generating Targets")
    dummie_publisher = rospy.Publisher("/targets", TargetList, queue_size=1)
    while  not  rospy.is_shutdown():
        Dummie(dummie_publisher)
        rate.sleep()


    rospy.spin()