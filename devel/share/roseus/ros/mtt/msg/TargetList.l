;; Auto-generated. Do not edit!


(when (boundp 'mtt::TargetList)
  (if (not (find-package "MTT"))
    (make-package "MTT"))
  (shadow 'TargetList (find-package "MTT")))
(unless (find-package "MTT::TARGETLIST")
  (make-package "MTT::TARGETLIST"))

(in-package "ROS")
;;//! \htmlinclude TargetList.msg.html


(defclass mtt::TargetList
  :super ros::object
  :slots (_Targets ))

(defmethod mtt::TargetList
  (:init
   (&key
    ((:Targets __Targets) (let (r) (dotimes (i 0) (push (instance mtt::Target :init) r)) r))
    )
   (send-super :init)
   (setq _Targets __Targets)
   self)
  (:Targets
   (&rest __Targets)
   (if (keywordp (car __Targets))
       (send* _Targets __Targets)
     (progn
       (if __Targets (setq _Targets (car __Targets)))
       _Targets)))
  (:serialization-length
   ()
   (+
    ;; mtt/Target[] _Targets
    (apply #'+ (send-all _Targets :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mtt/Target[] _Targets
     (write-long (length _Targets) s)
     (dolist (elem _Targets)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mtt/Target[] _Targets
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Targets (let (r) (dotimes (i n) (push (instance mtt::Target :init) r)) r))
     (dolist (elem- _Targets)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mtt::TargetList :md5sum-) "47f4cb934cefc440ec66e810f593a9ae")
(setf (get mtt::TargetList :datatype-) "mtt/TargetList")
(setf (get mtt::TargetList :definition-)
      "#the header of the message
Target[] Targets

================================================================================
MSG: mtt/Target
#the header of the message
Header header
uint32 id
geometry_msgs/Pose pose
geometry_msgs/Point initialpose
geometry_msgs/Point finalpose
geometry_msgs/Twist velocity
float64 size

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



(provide :mtt/TargetList "47f4cb934cefc440ec66e810f593a9ae")


