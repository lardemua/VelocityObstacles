; Auto-generated. Do not edit!


(cl:in-package human_driver_monitor-msg)


;//! \htmlinclude HumanDriverMonitorStatus.msg.html

(cl:defclass <HumanDriverMonitorStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lights_high
    :reader lights_high
    :initarg :lights_high
    :type cl:integer
    :initform 0)
   (lights_medium
    :reader lights_medium
    :initarg :lights_medium
    :type cl:integer
    :initform 0)
   (lights_left
    :reader lights_left
    :initarg :lights_left
    :type cl:integer
    :initform 0)
   (lights_right
    :reader lights_right
    :initarg :lights_right
    :type cl:integer
    :initform 0)
   (lights_danger
    :reader lights_danger
    :initarg :lights_danger
    :type cl:integer
    :initform 0)
   (ignition
    :reader ignition
    :initarg :ignition
    :type cl:integer
    :initform 0)
   (horn
    :reader horn
    :initarg :horn
    :type cl:integer
    :initform 0)
   (throttle_pressure
    :reader throttle_pressure
    :initarg :throttle_pressure
    :type cl:integer
    :initform 0)
   (brake_pressure
    :reader brake_pressure
    :initarg :brake_pressure
    :type cl:integer
    :initform 0)
   (clutch_pressure
    :reader clutch_pressure
    :initarg :clutch_pressure
    :type cl:integer
    :initform 0))
)

(cl:defclass HumanDriverMonitorStatus (<HumanDriverMonitorStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HumanDriverMonitorStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HumanDriverMonitorStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name human_driver_monitor-msg:<HumanDriverMonitorStatus> is deprecated: use human_driver_monitor-msg:HumanDriverMonitorStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HumanDriverMonitorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader human_driver_monitor-msg:header-val is deprecated.  Use human_driver_monitor-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lights_high-val :lambda-list '(m))
(cl:defmethod lights_high-val ((m <HumanDriverMonitorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader human_driver_monitor-msg:lights_high-val is deprecated.  Use human_driver_monitor-msg:lights_high instead.")
  (lights_high m))

(cl:ensure-generic-function 'lights_medium-val :lambda-list '(m))
(cl:defmethod lights_medium-val ((m <HumanDriverMonitorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader human_driver_monitor-msg:lights_medium-val is deprecated.  Use human_driver_monitor-msg:lights_medium instead.")
  (lights_medium m))

(cl:ensure-generic-function 'lights_left-val :lambda-list '(m))
(cl:defmethod lights_left-val ((m <HumanDriverMonitorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader human_driver_monitor-msg:lights_left-val is deprecated.  Use human_driver_monitor-msg:lights_left instead.")
  (lights_left m))

(cl:ensure-generic-function 'lights_right-val :lambda-list '(m))
(cl:defmethod lights_right-val ((m <HumanDriverMonitorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader human_driver_monitor-msg:lights_right-val is deprecated.  Use human_driver_monitor-msg:lights_right instead.")
  (lights_right m))

(cl:ensure-generic-function 'lights_danger-val :lambda-list '(m))
(cl:defmethod lights_danger-val ((m <HumanDriverMonitorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader human_driver_monitor-msg:lights_danger-val is deprecated.  Use human_driver_monitor-msg:lights_danger instead.")
  (lights_danger m))

(cl:ensure-generic-function 'ignition-val :lambda-list '(m))
(cl:defmethod ignition-val ((m <HumanDriverMonitorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader human_driver_monitor-msg:ignition-val is deprecated.  Use human_driver_monitor-msg:ignition instead.")
  (ignition m))

(cl:ensure-generic-function 'horn-val :lambda-list '(m))
(cl:defmethod horn-val ((m <HumanDriverMonitorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader human_driver_monitor-msg:horn-val is deprecated.  Use human_driver_monitor-msg:horn instead.")
  (horn m))

(cl:ensure-generic-function 'throttle_pressure-val :lambda-list '(m))
(cl:defmethod throttle_pressure-val ((m <HumanDriverMonitorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader human_driver_monitor-msg:throttle_pressure-val is deprecated.  Use human_driver_monitor-msg:throttle_pressure instead.")
  (throttle_pressure m))

(cl:ensure-generic-function 'brake_pressure-val :lambda-list '(m))
(cl:defmethod brake_pressure-val ((m <HumanDriverMonitorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader human_driver_monitor-msg:brake_pressure-val is deprecated.  Use human_driver_monitor-msg:brake_pressure instead.")
  (brake_pressure m))

(cl:ensure-generic-function 'clutch_pressure-val :lambda-list '(m))
(cl:defmethod clutch_pressure-val ((m <HumanDriverMonitorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader human_driver_monitor-msg:clutch_pressure-val is deprecated.  Use human_driver_monitor-msg:clutch_pressure instead.")
  (clutch_pressure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HumanDriverMonitorStatus>) ostream)
  "Serializes a message object of type '<HumanDriverMonitorStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_high)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_high)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_high)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_high)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_medium)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_medium)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_medium)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_medium)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_danger)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_danger)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_danger)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_danger)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ignition)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ignition)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ignition)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ignition)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'horn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'horn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'horn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'horn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'throttle_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'throttle_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'throttle_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'throttle_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'brake_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'brake_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'brake_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clutch_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'clutch_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'clutch_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'clutch_pressure)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HumanDriverMonitorStatus>) istream)
  "Deserializes a message object of type '<HumanDriverMonitorStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_high)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_high)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_high)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_high)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_medium)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_medium)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_medium)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_medium)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_danger)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_danger)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_danger)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_danger)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ignition)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ignition)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ignition)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ignition)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'horn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'horn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'horn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'horn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'throttle_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'throttle_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'throttle_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'throttle_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'brake_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'brake_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'brake_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clutch_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'clutch_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'clutch_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'clutch_pressure)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HumanDriverMonitorStatus>)))
  "Returns string type for a message object of type '<HumanDriverMonitorStatus>"
  "human_driver_monitor/HumanDriverMonitorStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HumanDriverMonitorStatus)))
  "Returns string type for a message object of type 'HumanDriverMonitorStatus"
  "human_driver_monitor/HumanDriverMonitorStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HumanDriverMonitorStatus>)))
  "Returns md5sum for a message object of type '<HumanDriverMonitorStatus>"
  "e0f0d2c30fd975b578f76d6ff646b0d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HumanDriverMonitorStatus)))
  "Returns md5sum for a message object of type 'HumanDriverMonitorStatus"
  "e0f0d2c30fd975b578f76d6ff646b0d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HumanDriverMonitorStatus>)))
  "Returns full string definition for message of type '<HumanDriverMonitorStatus>"
  (cl:format cl:nil "Header header~%~%uint32 lights_high~%uint32 lights_medium~%uint32 lights_left~%uint32 lights_right~%uint32 lights_danger~%~%uint32 ignition~%~%uint32 horn~%~%uint32 throttle_pressure~%uint32 brake_pressure~%uint32 clutch_pressure~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HumanDriverMonitorStatus)))
  "Returns full string definition for message of type 'HumanDriverMonitorStatus"
  (cl:format cl:nil "Header header~%~%uint32 lights_high~%uint32 lights_medium~%uint32 lights_left~%uint32 lights_right~%uint32 lights_danger~%~%uint32 ignition~%~%uint32 horn~%~%uint32 throttle_pressure~%uint32 brake_pressure~%uint32 clutch_pressure~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HumanDriverMonitorStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HumanDriverMonitorStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'HumanDriverMonitorStatus
    (cl:cons ':header (header msg))
    (cl:cons ':lights_high (lights_high msg))
    (cl:cons ':lights_medium (lights_medium msg))
    (cl:cons ':lights_left (lights_left msg))
    (cl:cons ':lights_right (lights_right msg))
    (cl:cons ':lights_danger (lights_danger msg))
    (cl:cons ':ignition (ignition msg))
    (cl:cons ':horn (horn msg))
    (cl:cons ':throttle_pressure (throttle_pressure msg))
    (cl:cons ':brake_pressure (brake_pressure msg))
    (cl:cons ':clutch_pressure (clutch_pressure msg))
))
