#!/usr/bin/env python
import math

# import numpy as np
import rospy
import tf
from geometry_msgs.msg import Transform, Quaternion, Point
from visualization_msgs.msg import Marker


# def movePlayer(tf_broadcaster, player_name, transform_now, vel, angle):
#     """
#     Moves a player given its currrent pose, a velocity, and angle, and a maximum velocity
#     :param tf_broadcaster: Used to publish the new pose of the player
#     :param player_name:  string with the name of the player (must coincide with the name of the tf frame_id)
#     :param transform_now: a geometry_msgs.msg.Transform() containing the current pose. This variable is updated with
#                           the new player pose
#     :param vel: velocity of displacement to take in x axis
#     :param angle: angle to turn, limited by max_angle (pi/30)
#     :param max_vel: maximum velocity or displacement based on the selected animal
#     """
#
#     T1 = transform_now
#
#     T2 = Transform()
#     T2.rotation = tf.transformations.quaternion_from_euler(0, 0, angle)
#     T2.translation.x = vel
#     matrix_trans = tf.transformations.translation_matrix((T2.translation.x,
#                                                           T2.translation.y,
#                                                           T2.translation.z))
#
#     matrix_rot = tf.transformations.quaternion_matrix((T2.rotation[0],
#                                                        T2.rotation[1],
#                                                        T2.rotation[2],
#                                                        T2.rotation[3]))
#     matrixT2 = np.matmul(matrix_trans, matrix_rot)
#
#     matrix_trans = tf.transformations.translation_matrix((T1.translation.x,
#                                                           T1.translation.y,
#                                                           T1.translation.z))
#
#     matrix_rot = tf.transformations.quaternion_matrix((T1.rotation.x,
#                                                        T1.rotation.y,
#                                                        T1.rotation.z,
#                                                        T1.rotation.w))
#     matrixT1 = np.matmul(matrix_trans, matrix_rot)
#
#     matrix_new_transform = np.matmul(matrixT1, matrixT2)
#
#     quat = tf.transformations.quaternion_from_matrix(matrix_new_transform)
#     trans = tf.transformations.translation_from_matrix(matrix_new_transform)
#
#     T1.rotation = Quaternion(quat[0], quat[1], quat[2], quat[3])
#     T1.translation.x = trans[0]
#     T1.translation.y = trans[1]
#     T1.translation.z = trans[2]
#
#     tf_broadcaster.sendTransform(trans, quat, rospy.Time.now(), player_name, "world")


def getTransformation(tf_listener, my_name, target_name,
                                time=rospy.Time(0), max_time_to_wait=1.0):
    print("Transforming")
    try:
        tf_listener.waitForTransform(my_name, target_name, time, rospy.Duration(max_time_to_wait))
        (trans, rot) = tf_listener.lookupTransform(my_name, target_name, time)
        x, y = trans[0], trans[1]
        rospy.logwarn("Got transform: " + str(x) + " " + str(y) )

    except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException, tf.Exception):
        rospy.logwarn(my_name + ': Could not get transform from ' + my_name + ' to ' + target_name)
        return None,None
    # compute distance and angle
    # distance = math.sqrt(x ** 2 + y ** 2)
    # angle = math.atan2(y, x)
    return x,y


def CreateMarkers():

    dummies = Marker(ns='Dummy',id=0, type=Marker.CYLINDER, action=Marker.ADD)
    dummies.header.frame_id = "dummie"
    dummies.header.stamp = rospy.Time.now()
    dummies.color.a = 1.0
    dummies.color.r = 1.0
    dummies.color.g = 0.0
    dummies.color.b = 0.0
    dummies.scale.x = 0.4
    dummies.scale.y = 0.4
    dummies.scale.z = 0.01

    return dummies


def posicaoinicial(transform,posicaoinicial):
    transform.translation = posicaoinicial
    q = tf.transformations.quaternion_from_euler(0,0,0)
    transform.rotation = Quaternion(q[0], q[1], q[2], q[3])






class Dummie:

    def Move(self, br, firsttime, myname, target, posicaoatual, vel):
        t = rospy.Time.now().to_sec() - firsttime.to_sec()
        posicaoatual.translation.x = -10 + (vel * t)
        br.sendTransform((posicaoatual.translation.x,posicaoatual.translation.y,posicaoatual.translation.z),
                         (posicaoatual.rotation.x, posicaoatual.rotation.y, posicaoatual.rotation.z, posicaoatual.rotation.w),
                         rospy.Time.now(), myname, target)
        print("time elapsed: " + str(t))
        return posicaoatual


    def __init__(self):
        self.transform = Transform()
        self.br = tf.TransformBroadcaster()
        self.tf_listener = tf.TransformListener()
        self.rate = rospy.Rate(1)


        self.dummie_publisher = rospy.Publisher('/dummieTargets', Marker, queue_size=1000)

        self.myname = "dummie"
        self.target = "world"

        self.now = rospy.Time.now()
        self.velocidade = 2.0

        self.posicaoinicial = Transform()
        self.posicaoinicial.translation.x = -10.0
        self.posicaoinicial.translation.y = 0.0
        self.posicaoinicial.translation.z = 0.0
        self.posicaoinicial.rotation.x = 0.0
        self.posicaoinicial.rotation.y = 0.0
        self.posicaoinicial.rotation.z = 0.0
        self.posicaoinicial.rotation.w = 1.0

        self.posicaofinal = Transform()
        self.posicaofinal.translation.x = 50.0
        self.posicaofinal.translation.y = 0.0
        self.posicaofinal.translation.z = 0.0
        self.posicaofinal.rotation = (0.0, 0.0, 0.0, 1.0)

        self.br.sendTransform((self.posicaoinicial.translation.x,self.posicaoinicial.translation.y,self.posicaoinicial.translation.z),
                              (self.posicaoinicial.rotation.x,self.posicaoinicial.rotation.y,self.posicaoinicial.rotation.z,self.posicaoinicial.rotation.w),
                              self.now, self.myname, self.target)


        self.marker_dummie = CreateMarkers()
        self.dummie_publisher.publish(self.marker_dummie)

        self.posicaoatual = self.posicaoinicial
        while math.floor(self.posicaoatual.translation.x) != self.posicaofinal.translation.x and math.ceil(self.posicaoatual.translation.x) != self.posicaofinal.translation.x:
        # while 1:
        #     print(math.floor(self.posicaoatual.translation.x))

            self.posicaoatual = self.Move(self.br, self.now, self.myname, self. target, self.posicaoatual, self.velocidade)
            (x, y) = getTransformation(self.tf_listener, self.myname, self.target)
            self.rate.sleep()
            print(" xfloor: " + str(math.floor(self.posicaoatual.translation.x))+" xceil: " + str(math.ceil(self.posicaoatual.translation.x)))









if __name__ == '__main__':
    rospy.init_node('DummyTargets', anonymous=False)
    print("Generating Targets")
    Dummie()
    rospy.spin()