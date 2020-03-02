; Auto-generated. Do not edit!


(cl:in-package atlascar_base-msg)


;//! \htmlinclude PlcCommand.msg.html

(cl:defclass <PlcCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (clutch
    :reader clutch
    :initarg :clutch
    :type cl:float
    :initform 0.0)
   (brake
    :reader brake
    :initarg :brake
    :type cl:float
    :initform 0.0)
   (steering_wheel
    :reader steering_wheel
    :initarg :steering_wheel
    :type cl:float
    :initform 0.0)
   (rpm
    :reader rpm
    :initarg :rpm
    :type cl:float
    :initform 0.0)
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
   (lights_minimum
    :reader lights_minimum
    :initarg :lights_minimum
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
   (lights_brake
    :reader lights_brake
    :initarg :lights_brake
    :type cl:integer
    :initform 0)
   (lights_reverse
    :reader lights_reverse
    :initarg :lights_reverse
    :type cl:integer
    :initform 0)
   (lights_warning
    :reader lights_warning
    :initarg :lights_warning
    :type cl:integer
    :initform 0)
   (ignition
    :reader ignition
    :initarg :ignition
    :type cl:integer
    :initform 0)
   (emergency
    :reader emergency
    :initarg :emergency
    :type cl:integer
    :initform 0)
   (auto_ignition
    :reader auto_ignition
    :initarg :auto_ignition
    :type cl:integer
    :initform 0)
   (auto_brake
    :reader auto_brake
    :initarg :auto_brake
    :type cl:integer
    :initform 0)
   (auto_direction
    :reader auto_direction
    :initarg :auto_direction
    :type cl:integer
    :initform 0)
   (auto_clutch
    :reader auto_clutch
    :initarg :auto_clutch
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

(cl:defclass PlcCommand (<PlcCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlcCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlcCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlascar_base-msg:<PlcCommand> is deprecated: use atlascar_base-msg:PlcCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlcCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:header-val is deprecated.  Use atlascar_base-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'clutch-val :lambda-list '(m))
(cl:defmethod clutch-val ((m <PlcCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:clutch-val is deprecated.  Use atlascar_base-msg:clutch instead.")
  (clutch m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <PlcCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:brake-val is deprecated.  Use atlascar_base-msg:brake instead.")
  (brake m))

(cl:ensure-generic-function 'steering_wheel-val :lambda-list '(m))
(cl:defmethod steering_wheel-val ((m <PlcCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:steering_wheel-val is deprecated.  Use atlascar_base-msg:steering_wheel instead.")
  (steering_wheel m))

(cl:ensure-generic-function 'rpm-val :lambda-list '(m))
(cl:defmethod rpm-val ((m <PlcCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:rpm-val is deprecated.  Use atlascar_base-msg:rpm instead.")
  (rpm m))

(cl:ensure-generic-function 'lights_high-val :lambda-list '(m))
(cl:defmethod lights_high-val ((m <PlcCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:lights_high-val is deprecated.  Use atlascar_base-msg:lights_high instead.")
  (lights_high m))

(cl:ensure-generic-function 'lights_medium-val :lambda-list '(m))
(cl:defmethod lights_medium-val ((m <PlcCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:lights_medium-val is deprecated.  Use atlascar_base-msg:lights_medium instead.")
  (lights_medium m))

(cl:ensure-generic-function 'lights_minimum-val :lambda-list '(m))
(cl:defmethod lights_minimum-val ((m <PlcCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:lights_minimum-val is deprecated.  Use atlascar_base-msg:lights_minimum instead.")
  (lights_minimum m))

(cl:ensure-generic-function 'lights_left-val :lambda-list '(m))
(cl:defmethod lights_left-val ((m <PlcCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:lights_left-val is deprecated.  Use atlascar_base-msg:lights_left instead.")
  (lights_left m))

(cl:ensure-generic-function 'lights_right-val :lambda-list '(m))
(cl:defmethod lights_right-val ((m <PlcCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:lights_right-val is deprecated.  Use atlascar_base-msg:lights_right instead.")
  (lights_right m))

(cl:ensure-generic-function 'lights_brake-val :lambda-list '(m))
(cl:defmethod lights_brake-val ((m <PlcCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:lights_brake-val is deprecated.  Use atlascar_base-msg:lights_brake instead.")
  (lights_brake m))

(cl:ensure-generic-function 'lights_reverse-val :lambda-list '(m))
(cl:defmethod lights_reverse-val ((m <PlcCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:lights_reverse-val is deprecated.  Use atlascar_base-msg:lights_reverse instead.")
  (lights_reverse m))

(cl:ensure-generic-function 'lights_warning-val :lambda-list '(m))
(cl:defmethod lights_warning-val ((m <PlcCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:lights_warning-val is deprecated.  Use atlascar_base-msg:lights_warning instead.")
  (lights_warning m))

(cl:ensure-generic-function 'ignition-val :lambda-list '(m))
(cl:defmethod ignition-val ((m <PlcCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:ignition-val is deprecated.  Use atlascar_base-msg:ignition instead.")
  (ignition m))

(cl:ensure-generic-function 'emergency-val :lambda-list '(m))
(cl:defmethod emergency-val ((m <PlcCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:emergency-val is deprecated.  Use atlascar_base-msg:emergency instead.")
  (emergency m))

(cl:ensure-generic-function 'auto_ignition-val :lambda-list '(m))
(cl:defmethod auto_ignition-val ((m <PlcCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:auto_ignition-val is deprecated.  Use atlascar_base-msg:auto_ignition instead.")
  (auto_ignition m))

(cl:ensure-generic-function 'auto_brake-val :lambda-list '(m))
(cl:defmethod auto_brake-val ((m <PlcCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:auto_brake-val is deprecated.  Use atlascar_base-msg:auto_brake instead.")
  (auto_brake m))

(cl:ensure-generic-function 'auto_direction-val :lambda-list '(m))
(cl:defmethod auto_direction-val ((m <PlcCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:auto_direction-val is deprecated.  Use atlascar_base-msg:auto_direction instead.")
  (auto_direction m))

(cl:ensure-generic-function 'auto_clutch-val :lambda-list '(m))
(cl:defmethod auto_clutch-val ((m <PlcCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:auto_clutch-val is deprecated.  Use atlascar_base-msg:auto_clutch instead.")
  (auto_clutch m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <PlcCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:priority-val is deprecated.  Use atlascar_base-msg:priority instead.")
  (priority m))

(cl:ensure-generic-function 'lifetime-val :lambda-list '(m))
(cl:defmethod lifetime-val ((m <PlcCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:lifetime-val is deprecated.  Use atlascar_base-msg:lifetime instead.")
  (lifetime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlcCommand>) ostream)
  "Serializes a message object of type '<PlcCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'clutch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'brake))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steering_wheel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rpm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_high)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_high)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_high)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_high)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_medium)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_medium)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_medium)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_medium)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_minimum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_minimum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_minimum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_minimum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_brake)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_brake)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_brake)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_brake)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_reverse)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_reverse)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_reverse)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_reverse)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_warning)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_warning)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_warning)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_warning)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ignition)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ignition)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ignition)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ignition)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emergency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'emergency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'emergency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'emergency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_ignition)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'auto_ignition)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'auto_ignition)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'auto_ignition)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_brake)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'auto_brake)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'auto_brake)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'auto_brake)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'auto_direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'auto_direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'auto_direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_clutch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'auto_clutch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'auto_clutch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'auto_clutch)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlcCommand>) istream)
  "Deserializes a message object of type '<PlcCommand>"
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
    (cl:setf (cl:slot-value msg 'clutch) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_wheel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rpm) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_high)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_high)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_high)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_high)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_medium)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_medium)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_medium)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_medium)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_minimum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_minimum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_minimum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_minimum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_brake)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_brake)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_brake)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_brake)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_reverse)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_reverse)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_reverse)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_reverse)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights_warning)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lights_warning)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lights_warning)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lights_warning)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ignition)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ignition)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ignition)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ignition)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emergency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'emergency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'emergency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'emergency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_ignition)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'auto_ignition)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'auto_ignition)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'auto_ignition)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_brake)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'auto_brake)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'auto_brake)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'auto_brake)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'auto_direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'auto_direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'auto_direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_clutch)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'auto_clutch)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'auto_clutch)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'auto_clutch)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlcCommand>)))
  "Returns string type for a message object of type '<PlcCommand>"
  "atlascar_base/PlcCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlcCommand)))
  "Returns string type for a message object of type 'PlcCommand"
  "atlascar_base/PlcCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlcCommand>)))
  "Returns md5sum for a message object of type '<PlcCommand>"
  "efb734467385cefb807dd165a73e2077")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlcCommand)))
  "Returns md5sum for a message object of type 'PlcCommand"
  "efb734467385cefb807dd165a73e2077")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlcCommand>)))
  "Returns full string definition for message of type '<PlcCommand>"
  (cl:format cl:nil "Header header~%~%float64 clutch~%float64 brake~%float64 steering_wheel~%float64 rpm~%~%uint32 lights_high~%uint32 lights_medium~%uint32 lights_minimum~%uint32 lights_left~%uint32 lights_right~%uint32 lights_brake~%uint32 lights_reverse~%uint32 lights_warning~%~%uint32 ignition~%uint32 emergency~%~%uint32 auto_ignition~%uint32 auto_brake~%uint32 auto_direction~%uint32 auto_clutch~%~%float64 priority~%float64 lifetime~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlcCommand)))
  "Returns full string definition for message of type 'PlcCommand"
  (cl:format cl:nil "Header header~%~%float64 clutch~%float64 brake~%float64 steering_wheel~%float64 rpm~%~%uint32 lights_high~%uint32 lights_medium~%uint32 lights_minimum~%uint32 lights_left~%uint32 lights_right~%uint32 lights_brake~%uint32 lights_reverse~%uint32 lights_warning~%~%uint32 ignition~%uint32 emergency~%~%uint32 auto_ignition~%uint32 auto_brake~%uint32 auto_direction~%uint32 auto_clutch~%~%float64 priority~%float64 lifetime~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlcCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
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
     4
     4
     4
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlcCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'PlcCommand
    (cl:cons ':header (header msg))
    (cl:cons ':clutch (clutch msg))
    (cl:cons ':brake (brake msg))
    (cl:cons ':steering_wheel (steering_wheel msg))
    (cl:cons ':rpm (rpm msg))
    (cl:cons ':lights_high (lights_high msg))
    (cl:cons ':lights_medium (lights_medium msg))
    (cl:cons ':lights_minimum (lights_minimum msg))
    (cl:cons ':lights_left (lights_left msg))
    (cl:cons ':lights_right (lights_right msg))
    (cl:cons ':lights_brake (lights_brake msg))
    (cl:cons ':lights_reverse (lights_reverse msg))
    (cl:cons ':lights_warning (lights_warning msg))
    (cl:cons ':ignition (ignition msg))
    (cl:cons ':emergency (emergency msg))
    (cl:cons ':auto_ignition (auto_ignition msg))
    (cl:cons ':auto_brake (auto_brake msg))
    (cl:cons ':auto_direction (auto_direction msg))
    (cl:cons ':auto_clutch (auto_clutch msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':lifetime (lifetime msg))
))
