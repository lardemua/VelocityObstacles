;; Auto-generated. Do not edit!


(when (boundp 'mtt::Target)
  (if (not (find-package "MTT"))
    (make-package "MTT"))
  (shadow 'Target (find-package "MTT")))
(unless (find-package "MTT::TARGET")
  (make-package "MTT::TARGET"))

(in-package "ROS")
;;//! \htmlinclude Target.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mtt::Target
  :super ros::object
  :slots (_header _id _pose _initialpose _finalpose _velocity _size _radius ))

(defmethod mtt::Target
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:initialpose __initialpose) (instance geometry_msgs::Point :init))
    ((:finalpose __finalpose) (instance geometry_msgs::Point :init))
    ((:velocity __velocity) (instance geometry_msgs::Twist :init))
    ((:size __size) 0.0)
    ((:radius __radius) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _pose __pose)
   (setq _initialpose __initialpose)
   (setq _finalpose __finalpose)
   (setq _velocity __velocity)
   (setq _size (float __size))
   (setq _radius (float __radius))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:initialpose
   (&rest __initialpose)
   (if (keywordp (car __initialpose))
       (send* _initialpose __initialpose)
     (progn
       (if __initialpose (setq _initialpose (car __initialpose)))
       _initialpose)))
  (:finalpose
   (&rest __finalpose)
   (if (keywordp (car __finalpose))
       (send* _finalpose __finalpose)
     (progn
       (if __finalpose (setq _finalpose (car __finalpose)))
       _finalpose)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _id
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Point _initialpose
    (send _initialpose :serialization-length)
    ;; geometry_msgs/Point _finalpose
    (send _finalpose :serialization-length)
    ;; geometry_msgs/Twist _velocity
    (send _velocity :serialization-length)
    ;; float64 _size
    8
    ;; float64 _radius
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Point _initialpose
       (send _initialpose :serialize s)
     ;; geometry_msgs/Point _finalpose
       (send _finalpose :serialize s)
     ;; geometry_msgs/Twist _velocity
       (send _velocity :serialize s)
     ;; float64 _size
       (sys::poke _size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Point _initialpose
     (send _initialpose :deserialize buf ptr-) (incf ptr- (send _initialpose :serialization-length))
   ;; geometry_msgs/Point _finalpose
     (send _finalpose :deserialize buf ptr-) (incf ptr- (send _finalpose :serialization-length))
   ;; geometry_msgs/Twist _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; float64 _size
     (setq _size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _radius
     (setq _radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mtt::Target :md5sum-) "baf79933d4acb5b34497b2dac57f0c51")
(setf (get mtt::Target :datatype-) "mtt/Target")
(setf (get mtt::Target :definition-)
      "#the header of the message
Header header
uint32 id
geometry_msgs/Pose pose
geometry_msgs/Point initialpose
geometry_msgs/Point finalpose
geometry_msgs/Twist velocity
float64 size
float64 radius

#sensor_msgs/PointCloud2 position
#sensor_msgs/PointCloud2 velocity
#sensor_msgs/PointCloud2[] obstacle_lines

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :mtt/Target "baf79933d4acb5b34497b2dac57f0c51")


