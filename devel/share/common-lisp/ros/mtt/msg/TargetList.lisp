; Auto-generated. Do not edit!


(cl:in-package mtt-msg)


;//! \htmlinclude TargetList.msg.html

(cl:defclass <TargetList> (roslisp-msg-protocol:ros-message)
  ((Targets
    :reader Targets
    :initarg :Targets
    :type (cl:vector mtt-msg:Target)
   :initform (cl:make-array 0 :element-type 'mtt-msg:Target :initial-element (cl:make-instance 'mtt-msg:Target))))
)

(cl:defclass TargetList (<TargetList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mtt-msg:<TargetList> is deprecated: use mtt-msg:TargetList instead.")))

(cl:ensure-generic-function 'Targets-val :lambda-list '(m))
(cl:defmethod Targets-val ((m <TargetList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mtt-msg:Targets-val is deprecated.  Use mtt-msg:Targets instead.")
  (Targets m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetList>) ostream)
  "Serializes a message object of type '<TargetList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Targets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'Targets))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetList>) istream)
  "Deserializes a message object of type '<TargetList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Targets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Targets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mtt-msg:Target))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetList>)))
  "Returns string type for a message object of type '<TargetList>"
  "mtt/TargetList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetList)))
  "Returns string type for a message object of type 'TargetList"
  "mtt/TargetList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetList>)))
  "Returns md5sum for a message object of type '<TargetList>"
  "b8607967434b3d13ee25504cdb114f58")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetList)))
  "Returns md5sum for a message object of type 'TargetList"
  "b8607967434b3d13ee25504cdb114f58")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetList>)))
  "Returns full string definition for message of type '<TargetList>"
  (cl:format cl:nil "#the header of the message~%Target[] Targets~%~%================================================================================~%MSG: mtt/Target~%#the header of the message~%Header header~%uint32 id~%geometry_msgs/Pose pose~%geometry_msgs/Point initialpose~%geometry_msgs/Point finalpose~%geometry_msgs/Twist velocity~%float64 size~%float64 radius~%~%#sensor_msgs/PointCloud2 position~%#sensor_msgs/PointCloud2 velocity~%#sensor_msgs/PointCloud2[] obstacle_lines~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetList)))
  "Returns full string definition for message of type 'TargetList"
  (cl:format cl:nil "#the header of the message~%Target[] Targets~%~%================================================================================~%MSG: mtt/Target~%#the header of the message~%Header header~%uint32 id~%geometry_msgs/Pose pose~%geometry_msgs/Point initialpose~%geometry_msgs/Point finalpose~%geometry_msgs/Twist velocity~%float64 size~%float64 radius~%~%#sensor_msgs/PointCloud2 position~%#sensor_msgs/PointCloud2 velocity~%#sensor_msgs/PointCloud2[] obstacle_lines~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Targets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetList>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetList
    (cl:cons ':Targets (Targets msg))
))
