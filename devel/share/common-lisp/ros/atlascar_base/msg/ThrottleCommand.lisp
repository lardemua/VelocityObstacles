; Auto-generated. Do not edit!


(cl:in-package atlascar_base-msg)


;//! \htmlinclude ThrottleCommand.msg.html

(cl:defclass <ThrottleCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (throttle
    :reader throttle
    :initarg :throttle
    :type cl:float
    :initform 0.0)
   (mode
    :reader mode
    :initarg :mode
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

(cl:defclass ThrottleCommand (<ThrottleCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThrottleCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThrottleCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlascar_base-msg:<ThrottleCommand> is deprecated: use atlascar_base-msg:ThrottleCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ThrottleCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:header-val is deprecated.  Use atlascar_base-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <ThrottleCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:throttle-val is deprecated.  Use atlascar_base-msg:throttle instead.")
  (throttle m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <ThrottleCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:mode-val is deprecated.  Use atlascar_base-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <ThrottleCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:priority-val is deprecated.  Use atlascar_base-msg:priority instead.")
  (priority m))

(cl:ensure-generic-function 'lifetime-val :lambda-list '(m))
(cl:defmethod lifetime-val ((m <ThrottleCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:lifetime-val is deprecated.  Use atlascar_base-msg:lifetime instead.")
  (lifetime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThrottleCommand>) ostream)
  "Serializes a message object of type '<ThrottleCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'throttle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mode)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThrottleCommand>) istream)
  "Deserializes a message object of type '<ThrottleCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mode)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThrottleCommand>)))
  "Returns string type for a message object of type '<ThrottleCommand>"
  "atlascar_base/ThrottleCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThrottleCommand)))
  "Returns string type for a message object of type 'ThrottleCommand"
  "atlascar_base/ThrottleCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThrottleCommand>)))
  "Returns md5sum for a message object of type '<ThrottleCommand>"
  "699f454e929c5ffcacbe00a57838c2fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThrottleCommand)))
  "Returns md5sum for a message object of type 'ThrottleCommand"
  "699f454e929c5ffcacbe00a57838c2fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThrottleCommand>)))
  "Returns full string definition for message of type '<ThrottleCommand>"
  (cl:format cl:nil "Header header~%~%float64 throttle~%uint32 mode~%~%float64 priority~%float64 lifetime~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThrottleCommand)))
  "Returns full string definition for message of type 'ThrottleCommand"
  (cl:format cl:nil "Header header~%~%float64 throttle~%uint32 mode~%~%float64 priority~%float64 lifetime~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThrottleCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThrottleCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'ThrottleCommand
    (cl:cons ':header (header msg))
    (cl:cons ':throttle (throttle msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':lifetime (lifetime msg))
))
