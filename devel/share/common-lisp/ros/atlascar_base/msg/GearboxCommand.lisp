; Auto-generated. Do not edit!


(cl:in-package atlascar_base-msg)


;//! \htmlinclude GearboxCommand.msg.html

(cl:defclass <GearboxCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gear
    :reader gear
    :initarg :gear
    :type cl:integer
    :initform 0)
   (priority
    :reader priority
    :initarg :priority
    :type cl:float
    :initform 0.0)
   (lifetime
    :reader lifetime
    :initarg :lifetime
    :type cl:float
    :initform 0.0))
)

(cl:defclass GearboxCommand (<GearboxCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GearboxCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GearboxCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlascar_base-msg:<GearboxCommand> is deprecated: use atlascar_base-msg:GearboxCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GearboxCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:header-val is deprecated.  Use atlascar_base-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <GearboxCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:gear-val is deprecated.  Use atlascar_base-msg:gear instead.")
  (gear m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <GearboxCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:priority-val is deprecated.  Use atlascar_base-msg:priority instead.")
  (priority m))

(cl:ensure-generic-function 'lifetime-val :lambda-list '(m))
(cl:defmethod lifetime-val ((m <GearboxCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:lifetime-val is deprecated.  Use atlascar_base-msg:lifetime instead.")
  (lifetime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GearboxCommand>) ostream)
  "Serializes a message object of type '<GearboxCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gear)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'priority))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lifetime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GearboxCommand>) istream)
  "Deserializes a message object of type '<GearboxCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gear)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gear)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gear)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'priority) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lifetime) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GearboxCommand>)))
  "Returns string type for a message object of type '<GearboxCommand>"
  "atlascar_base/GearboxCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GearboxCommand)))
  "Returns string type for a message object of type 'GearboxCommand"
  "atlascar_base/GearboxCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GearboxCommand>)))
  "Returns md5sum for a message object of type '<GearboxCommand>"
  "cbb552e92ed51b0132f43a0b494df5e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GearboxCommand)))
  "Returns md5sum for a message object of type 'GearboxCommand"
  "cbb552e92ed51b0132f43a0b494df5e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GearboxCommand>)))
  "Returns full string definition for message of type '<GearboxCommand>"
  (cl:format cl:nil "Header header~%~%uint32 gear~%~%float64 priority~%float64 lifetime~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GearboxCommand)))
  "Returns full string definition for message of type 'GearboxCommand"
  (cl:format cl:nil "Header header~%~%uint32 gear~%~%float64 priority~%float64 lifetime~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GearboxCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GearboxCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'GearboxCommand
    (cl:cons ':header (header msg))
    (cl:cons ':gear (gear msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':lifetime (lifetime msg))
))
