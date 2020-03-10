#!/usr/bin/env python
import math

import numpy as np
import rospy
import tf
from geometry_msgs.msg import Transform, Quaternion
from visualization_msgs.msg import Marker


def movePlayer(tf_broadcaster, player_name, transform_now, vel, angle):
    """
    Moves a player given its currrent pose, a velocity, and angle, and a maximum velocity
    :param tf_broadcaster: Used to publish the new pose of the player
    :param player_name:  string with the name of the player (must coincide with the name of the tf frame_id)
    :param transform_now: a geometry_msgs.msg.Transform() containing the current pose. This variable is updated with
                          the new player pose
    :param vel: velocity of displacement to take in x axis
    :param angle: angle to turn, limited by max_angle (pi/30)
    :param max_vel: maximum velocity or displacement based on the selected animal
    """

    T1 = transform_now

    T2 = Transform()
    T2.rotation = tf.transformations.quaternion_from_euler(0, 0, angle)
    T2.translation.x = vel
    matrix_trans = tf.transformations.translation_matrix((T2.translation.x,
                                                          T2.translation.y,
                                                          T2.translation.z))

    matrix_rot = tf.transformations.quaternion_matrix((T2.rotation[0],
                                                       T2.rotation[1],
                                                       T2.rotation[2],
                                                       T2.rotation[3]))
    matrixT2 = np.matmul(matrix_trans, matrix_rot)

    matrix_trans = tf.transformations.translation_matrix((T1.translation.x,
                                                          T1.translation.y,
                                                          T1.translation.z))

    matrix_rot = tf.transformations.quaternion_matrix((T1.rotation.x,
                                                       T1.rotation.y,
                                                       T1.rotation.z,
                                                       T1.rotation.w))
    matrixT1 = np.matmul(matrix_trans, matrix_rot)

    matrix_new_transform = np.matmul(matrixT1, matrixT2)

    quat = tf.transformations.quaternion_from_matrix(matrix_new_transform)
    trans = tf.transformations.translation_from_matrix(matrix_new_transform)

    T1.rotation = Quaternion(quat[0], quat[1], quat[2], quat[3])
    T1.translation.x = trans[0]
    T1.translation.y = trans[1]
    T1.translation.z = trans[2]

    tf_broadcaster.sendTransform(trans, quat, rospy.Time.now(), player_name, "world")


def CreateMarkers():

    print("Im HERE")

    dummie_publisher = rospy.Publisher('/dummieTargets',Marker,queue_size=1000)

    dummies = Marker(ns='Dummy',id=0, type=Marker.CYLINDER, action=Marker.ADD)
    dummies.header.frame_id = "world"
    dummies.header.stamp = rospy.Time.now()
    dummies.color.a = 1.0
    dummies.color.r = 1.0
    dummies.color.g = 0.0
    dummies.color.b = 0.0
    dummies.pose.position.x = -5.0
    dummies.pose.position.y = 0.0
    dummies.pose.position.z = 0.0
    dummies.scale.x = 0.4
    dummies.scale.y = 0.4
    dummies.scale.z = 0.01

    if not rospy.is_shutdown():
        dummie_publisher.publish(dummies)

def posicaoinicial(transform):
    transform.translation.x = -5.0
    transform.translation.y = 0.0
    transform.translation.z = 0.0
    q = tf.transformations.quaternion_from_euler(0,0,0)
    transform.rotation = Quaternion(q[0], q[1], q[2], q[3])



    return transform

class Dummies():
    def __init__(self,id):
        print("entered dummies")
        self.dummyid = id
        self.listener = tf.TransformListener()
        self.transform = Transform()
        self.br = tf.TransformBroadcaster()



        self.posinicial = posicaoinicial(self.transform)

        self.br.sendTransform((self.posinicial.translation.x,self.posinicial.translation.y,self.posinicial.translation.z),(self.posinicial.rotation.x,self.posinicial.rotation.y,self.posinicial.rotation.z,self.posinicial.rotation.w),rospy.Time.now(),"dummie","world")

        while not rospy.is_shutdown():
            try:
                (trans, rot) = self.listener.lookupTransform('dummie','world',rospy.Time(0))
                print("got transformation")
            except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
                continue
                print("didn't get transformation")


if __name__ == '__main__':
    rospy.init_node('DummyTargets', anonymous=False)
    print("Generating Targets")
    CreateMarkers()
    Dummies(1)


    rospy.spin()