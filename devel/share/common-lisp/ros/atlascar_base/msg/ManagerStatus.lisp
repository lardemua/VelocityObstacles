; Auto-generated. Do not edit!


(cl:in-package atlascar_base-msg)


;//! \htmlinclude ManagerStatus.msg.html

(cl:defclass <ManagerStatus> (roslisp-msg-protocol:ros-message)
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
   (gearbox_status
    :reader gearbox_status
    :initarg :gearbox_status
    :type cl:string
    :initform "")
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
   (throttle
    :reader throttle
    :initarg :throttle
    :type cl:float
    :initform 0.0)
   (throttle_pedal
    :reader throttle_pedal
    :initarg :throttle_pedal
    :type cl:float
    :initform 0.0)
   (auto_throttle
    :reader auto_throttle
    :initarg :auto_throttle
    :type cl:integer
    :initform 0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (count
    :reader count
    :initarg :count
    :type cl:float
    :initform 0.0)
   (pulses_sec
    :reader pulses_sec
    :initarg :pulses_sec
    :type cl:float
    :initform 0.0)
   (revolutions_sec
    :reader revolutions_sec
    :initarg :revolutions_sec
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

(cl:defclass ManagerStatus (<ManagerStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManagerStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManagerStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlascar_base-msg:<ManagerStatus> is deprecated: use atlascar_base-msg:ManagerStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:header-val is deprecated.  Use atlascar_base-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:gear-val is deprecated.  Use atlascar_base-msg:gear instead.")
  (gear m))

(cl:ensure-generic-function 'gearbox_status-val :lambda-list '(m))
(cl:defmethod gearbox_status-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:gearbox_status-val is deprecated.  Use atlascar_base-msg:gearbox_status instead.")
  (gearbox_status m))

(cl:ensure-generic-function 'clutch-val :lambda-list '(m))
(cl:defmethod clutch-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:clutch-val is deprecated.  Use atlascar_base-msg:clutch instead.")
  (clutch m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:brake-val is deprecated.  Use atlascar_base-msg:brake instead.")
  (brake m))

(cl:ensure-generic-function 'steering_wheel-val :lambda-list '(m))
(cl:defmethod steering_wheel-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:steering_wheel-val is deprecated.  Use atlascar_base-msg:steering_wheel instead.")
  (steering_wheel m))

(cl:ensure-generic-function 'rpm-val :lambda-list '(m))
(cl:defmethod rpm-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:rpm-val is deprecated.  Use atlascar_base-msg:rpm instead.")
  (rpm m))

(cl:ensure-generic-function 'lights_brake-val :lambda-list '(m))
(cl:defmethod lights_brake-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:lights_brake-val is deprecated.  Use atlascar_base-msg:lights_brake instead.")
  (lights_brake m))

(cl:ensure-generic-function 'lights_reverse-val :lambda-list '(m))
(cl:defmethod lights_reverse-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:lights_reverse-val is deprecated.  Use atlascar_base-msg:lights_reverse instead.")
  (lights_reverse m))

(cl:ensure-generic-function 'lights_warning-val :lambda-list '(m))
(cl:defmethod lights_warning-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:lights_warning-val is deprecated.  Use atlascar_base-msg:lights_warning instead.")
  (lights_warning m))

(cl:ensure-generic-function 'emergency-val :lambda-list '(m))
(cl:defmethod emergency-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:emergency-val is deprecated.  Use atlascar_base-msg:emergency instead.")
  (emergency m))

(cl:ensure-generic-function 'auto_ignition-val :lambda-list '(m))
(cl:defmethod auto_ignition-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:auto_ignition-val is deprecated.  Use atlascar_base-msg:auto_ignition instead.")
  (auto_ignition m))

(cl:ensure-generic-function 'auto_brake-val :lambda-list '(m))
(cl:defmethod auto_brake-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:auto_brake-val is deprecated.  Use atlascar_base-msg:auto_brake instead.")
  (auto_brake m))

(cl:ensure-generic-function 'auto_direction-val :lambda-list '(m))
(cl:defmethod auto_direction-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:auto_direction-val is deprecated.  Use atlascar_base-msg:auto_direction instead.")
  (auto_direction m))

(cl:ensure-generic-function 'auto_clutch-val :lambda-list '(m))
(cl:defmethod auto_clutch-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:auto_clutch-val is deprecated.  Use atlascar_base-msg:auto_clutch instead.")
  (auto_clutch m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:throttle-val is deprecated.  Use atlascar_base-msg:throttle instead.")
  (throttle m))

(cl:ensure-generic-function 'throttle_pedal-val :lambda-list '(m))
(cl:defmethod throttle_pedal-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:throttle_pedal-val is deprecated.  Use atlascar_base-msg:throttle_pedal instead.")
  (throttle_pedal m))

(cl:ensure-generic-function 'auto_throttle-val :lambda-list '(m))
(cl:defmethod auto_throttle-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:auto_throttle-val is deprecated.  Use atlascar_base-msg:auto_throttle instead.")
  (auto_throttle m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:velocity-val is deprecated.  Use atlascar_base-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:count-val is deprecated.  Use atlascar_base-msg:count instead.")
  (count m))

(cl:ensure-generic-function 'pulses_sec-val :lambda-list '(m))
(cl:defmethod pulses_sec-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:pulses_sec-val is deprecated.  Use atlascar_base-msg:pulses_sec instead.")
  (pulses_sec m))

(cl:ensure-generic-function 'revolutions_sec-val :lambda-list '(m))
(cl:defmethod revolutions_sec-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:revolutions_sec-val is deprecated.  Use atlascar_base-msg:revolutions_sec instead.")
  (revolutions_sec m))

(cl:ensure-generic-function 'lights_high-val :lambda-list '(m))
(cl:defmethod lights_high-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:lights_high-val is deprecated.  Use atlascar_base-msg:lights_high instead.")
  (lights_high m))

(cl:ensure-generic-function 'lights_medium-val :lambda-list '(m))
(cl:defmethod lights_medium-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:lights_medium-val is deprecated.  Use atlascar_base-msg:lights_medium instead.")
  (lights_medium m))

(cl:ensure-generic-function 'lights_left-val :lambda-list '(m))
(cl:defmethod lights_left-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:lights_left-val is deprecated.  Use atlascar_base-msg:lights_left instead.")
  (lights_left m))

(cl:ensure-generic-function 'lights_right-val :lambda-list '(m))
(cl:defmethod lights_right-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:lights_right-val is deprecated.  Use atlascar_base-msg:lights_right instead.")
  (lights_right m))

(cl:ensure-generic-function 'lights_danger-val :lambda-list '(m))
(cl:defmethod lights_danger-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:lights_danger-val is deprecated.  Use atlascar_base-msg:lights_danger instead.")
  (lights_danger m))

(cl:ensure-generic-function 'ignition-val :lambda-list '(m))
(cl:defmethod ignition-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:ignition-val is deprecated.  Use atlascar_base-msg:ignition instead.")
  (ignition m))

(cl:ensure-generic-function 'horn-val :lambda-list '(m))
(cl:defmethod horn-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:horn-val is deprecated.  Use atlascar_base-msg:horn instead.")
  (horn m))

(cl:ensure-generic-function 'throttle_pressure-val :lambda-list '(m))
(cl:defmethod throttle_pressure-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:throttle_pressure-val is deprecated.  Use atlascar_base-msg:throttle_pressure instead.")
  (throttle_pressure m))

(cl:ensure-generic-function 'brake_pressure-val :lambda-list '(m))
(cl:defmethod brake_pressure-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:brake_pressure-val is deprecated.  Use atlascar_base-msg:brake_pressure instead.")
  (brake_pressure m))

(cl:ensure-generic-function 'clutch_pressure-val :lambda-list '(m))
(cl:defmethod clutch_pressure-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlascar_base-msg:clutch_pressure-val is deprecated.  Use atlascar_base-msg:clutch_pressure instead.")
  (clutch_pressure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManagerStatus>) ostream)
  "Serializes a message object of type '<ManagerStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gear)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gearbox_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gearbox_status))
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'throttle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'throttle_pedal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_throttle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'auto_throttle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'auto_throttle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'auto_throttle)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'count))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pulses_sec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'revolutions_sec))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManagerStatus>) istream)
  "Deserializes a message object of type '<ManagerStatus>"
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
      (cl:setf (cl:slot-value msg 'gearbox_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gearbox_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:setf (cl:slot-value msg 'throttle_pedal) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_throttle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'auto_throttle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'auto_throttle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'auto_throttle)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'count) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pulses_sec) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'revolutions_sec) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManagerStatus>)))
  "Returns string type for a message object of type '<ManagerStatus>"
  "atlascar_base/ManagerStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManagerStatus)))
  "Returns string type for a message object of type 'ManagerStatus"
  "atlascar_base/ManagerStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManagerStatus>)))
  "Returns md5sum for a message object of type '<ManagerStatus>"
  "5f7f354f13aa1404ddc73a37a6469fed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManagerStatus)))
  "Returns md5sum for a message object of type 'ManagerStatus"
  "5f7f354f13aa1404ddc73a37a6469fed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManagerStatus>)))
  "Returns full string definition for message of type '<ManagerStatus>"
  (cl:format cl:nil "Header header~%~%#from gearbox~%uint32 gear				    #done~%string gearbox_status	    #pending~%~%#from plc~%float64 clutch			    #done~%float64 brake			    #done~%float64 steering_wheel  	#done~%float64 rpm				    #done~%~%uint32 lights_brake		    #pending~%uint32 lights_reverse	    #pending~%uint32 lights_warning	    #pending~%~%uint32 emergency		    #done~%~%uint32 auto_ignition	    #done~%uint32 auto_brake		    #done~%uint32 auto_direction	    #done~%uint32 auto_clutch		    #done~%~%#from throttle~%float64 throttle		    #pending~%float64 throttle_pedal	    #done~%uint32 auto_throttle	    #done~%~%#from odometry~%float64 velocity		    #done~%float64 count              #done~%float64 pulses_sec         #done~%float64 revolutions_sec    #done~%~%~%#from driver~%uint32 lights_high		    #done~%uint32 lights_medium	    #done~%uint32 lights_left		    #done~%uint32 lights_right		    #done~%uint32 lights_danger	    #done~%~%uint32 ignition			    #done~%~%uint32 horn				    #pending~%~%uint32 throttle_pressure	#done~%uint32 brake_pressure		#done~%uint32 clutch_pressure		#done~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManagerStatus)))
  "Returns full string definition for message of type 'ManagerStatus"
  (cl:format cl:nil "Header header~%~%#from gearbox~%uint32 gear				    #done~%string gearbox_status	    #pending~%~%#from plc~%float64 clutch			    #done~%float64 brake			    #done~%float64 steering_wheel  	#done~%float64 rpm				    #done~%~%uint32 lights_brake		    #pending~%uint32 lights_reverse	    #pending~%uint32 lights_warning	    #pending~%~%uint32 emergency		    #done~%~%uint32 auto_ignition	    #done~%uint32 auto_brake		    #done~%uint32 auto_direction	    #done~%uint32 auto_clutch		    #done~%~%#from throttle~%float64 throttle		    #pending~%float64 throttle_pedal	    #done~%uint32 auto_throttle	    #done~%~%#from odometry~%float64 velocity		    #done~%float64 count              #done~%float64 pulses_sec         #done~%float64 revolutions_sec    #done~%~%~%#from driver~%uint32 lights_high		    #done~%uint32 lights_medium	    #done~%uint32 lights_left		    #done~%uint32 lights_right		    #done~%uint32 lights_danger	    #done~%~%uint32 ignition			    #done~%~%uint32 horn				    #pending~%~%uint32 throttle_pressure	#done~%uint32 brake_pressure		#done~%uint32 clutch_pressure		#done~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManagerStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:length (cl:slot-value msg 'gearbox_status))
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
     8
     8
     4
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
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManagerStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ManagerStatus
    (cl:cons ':header (header msg))
    (cl:cons ':gear (gear msg))
    (cl:cons ':gearbox_status (gearbox_status msg))
    (cl:cons ':clutch (clutch msg))
    (cl:cons ':brake (brake msg))
    (cl:cons ':steering_wheel (steering_wheel msg))
    (cl:cons ':rpm (rpm msg))
    (cl:cons ':lights_brake (lights_brake msg))
    (cl:cons ':lights_reverse (lights_reverse msg))
    (cl:cons ':lights_warning (lights_warning msg))
    (cl:cons ':emergency (emergency msg))
    (cl:cons ':auto_ignition (auto_ignition msg))
    (cl:cons ':auto_brake (auto_brake msg))
    (cl:cons ':auto_direction (auto_direction msg))
    (cl:cons ':auto_clutch (auto_clutch msg))
    (cl:cons ':throttle (throttle msg))
    (cl:cons ':throttle_pedal (throttle_pedal msg))
    (cl:cons ':auto_throttle (auto_throttle msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':count (count msg))
    (cl:cons ':pulses_sec (pulses_sec msg))
    (cl:cons ':revolutions_sec (revolutions_sec msg))
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
