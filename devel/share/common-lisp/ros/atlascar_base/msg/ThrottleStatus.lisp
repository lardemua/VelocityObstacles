; Auto-generated. Do not edit!


(cl:in-package atlascar_base-msg)


;//! \htmlinclude ThrottleStatus.msg.html

(cl:defclass <ThrottleStatus> (roslisp-msg-protocol:ros-message)
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
   (footPedal
    :reader footPedal
    :initarg :footPedal
    :type cl:float
    :initform 0.0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0))
)

(cl:defclass ThrottleStatus (<ThrottleStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThrottleStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThrottleStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlascar_base-msg:<ThrottleStatus> is deprecated: use atlascar_base-msg:ThrottleStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ThrottleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:header-val is deprecated.  Use atlascar_base-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <ThrottleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:throttle-val is deprecated.  Use atlascar_base-msg:throttle instead.")
  (throttle m))

(cl:ensure-generic-function 'footPedal-val :lambda-list '(m))
(cl:defmethod footPedal-val ((m <ThrottleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:footPedal-val is deprecated.  Use atlascar_base-msg:footPedal instead.")
  (footPedal m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <ThrottleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:mode-val is deprecated.  Use atlascar_base-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThrottleStatus>) ostream)
  "Serializes a message object of type '<ThrottleStatus>"
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'footPedal))))
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThrottleStatus>) istream)
  "Deserializes a message object of type '<ThrottleStatus>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'footPedal) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThrottleStatus>)))
  "Returns string type for a message object of type '<ThrottleStatus>"
  "atlascar_base/ThrottleStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThrottleStatus)))
  "Returns string type for a message object of type 'ThrottleStatus"
  "atlascar_base/ThrottleStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThrottleStatus>)))
  "Returns md5sum for a message object of type '<ThrottleStatus>"
  "0f0f061e0791f9ddcde2a12e67cbfa4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThrottleStatus)))
  "Returns md5sum for a message object of type 'ThrottleStatus"
  "0f0f061e0791f9ddcde2a12e67cbfa4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThrottleStatus>)))
  "Returns full string definition for message of type '<ThrottleStatus>"
  (cl:format cl:nil "Header header~%~%float64 throttle~%float64 footPedal~%uint32 mode~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThrottleStatus)))
  "Returns full string definition for message of type 'ThrottleStatus"
  (cl:format cl:nil "Header header~%~%float64 throttle~%float64 footPedal~%uint32 mode~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThrottleStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThrottleStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ThrottleStatus
    (cl:cons ':header (header msg))
    (cl:cons ':throttle (throttle msg))
    (cl:cons ':footPedal (footPedal msg))
    (cl:cons ':mode (mode msg))
))
