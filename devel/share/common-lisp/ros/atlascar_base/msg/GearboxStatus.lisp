; Auto-generated. Do not edit!


(cl:in-package atlascar_base-msg)


;//! \htmlinclude GearboxStatus.msg.html

(cl:defclass <GearboxStatus> (roslisp-msg-protocol:ros-message)
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
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass GearboxStatus (<GearboxStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GearboxStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GearboxStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlascar_base-msg:<GearboxStatus> is deprecated: use atlascar_base-msg:GearboxStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GearboxStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:header-val is deprecated.  Use atlascar_base-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <GearboxStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:gear-val is deprecated.  Use atlascar_base-msg:gear instead.")
  (gear m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GearboxStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:status-val is deprecated.  Use atlascar_base-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GearboxStatus>) ostream)
  "Serializes a message object of type '<GearboxStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gear)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GearboxStatus>) istream)
  "Deserializes a message object of type '<GearboxStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gear)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gear)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gear)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GearboxStatus>)))
  "Returns string type for a message object of type '<GearboxStatus>"
  "atlascar_base/GearboxStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GearboxStatus)))
  "Returns string type for a message object of type 'GearboxStatus"
  "atlascar_base/GearboxStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GearboxStatus>)))
  "Returns md5sum for a message object of type '<GearboxStatus>"
  "90990ff6d59265aaddd2301975eb85dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GearboxStatus)))
  "Returns md5sum for a message object of type 'GearboxStatus"
  "90990ff6d59265aaddd2301975eb85dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GearboxStatus>)))
  "Returns full string definition for message of type '<GearboxStatus>"
  (cl:format cl:nil "Header header~%~%uint32 gear~%string status~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GearboxStatus)))
  "Returns full string definition for message of type 'GearboxStatus"
  (cl:format cl:nil "Header header~%~%uint32 gear~%string status~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GearboxStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GearboxStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'GearboxStatus
    (cl:cons ':header (header msg))
    (cl:cons ':gear (gear msg))
    (cl:cons ':status (status msg))
))
