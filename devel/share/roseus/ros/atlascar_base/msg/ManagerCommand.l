;; Auto-generated. Do not edit!


(when (boundp 'atlascar_base::ManagerCommand)
  (if (not (find-package "ATLASCAR_BASE"))
    (make-package "ATLASCAR_BASE"))
  (shadow 'ManagerCommand (find-package "ATLASCAR_BASE")))
(unless (find-package "ATLASCAR_BASE::MANAGERCOMMAND")
  (make-package "ATLASCAR_BASE::MANAGERCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ManagerCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass atlascar_base::ManagerCommand
  :super ros::object
  :slots (_header _priority _lifetime _gear _clutch _brake _steering_wheel _throttle _velocity _lights_brake _lights_reverse _lights_warning _lights_high _lights_medium _lights_left _lights_right _lights_danger _emergency _auto_ignition _auto_brake _auto_direction _auto_clutch _auto_throttle _parking _ignition _horn _direct_control ))

(defmethod atlascar_base::ManagerCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:priority __priority) 0.0)
    ((:lifetime __lifetime) 0.0)
    ((:gear __gear) 0)
    ((:clutch __clutch) 0.0)
    ((:brake __brake) 0.0)
    ((:steering_wheel __steering_wheel) 0.0)
    ((:throttle __throttle) 0.0)
    ((:velocity __velocity) 0.0)
    ((:lights_brake __lights_brake) 0)
    ((:lights_reverse __lights_reverse) 0)
    ((:lights_warning __lights_warning) 0)
    ((:lights_high __lights_high) 0)
    ((:lights_medium __lights_medium) 0)
    ((:lights_left __lights_left) 0)
    ((:lights_right __lights_right) 0)
    ((:lights_danger __lights_danger) 0)
    ((:emergency __emergency) 0)
    ((:auto_ignition __auto_ignition) 0)
    ((:auto_brake __auto_brake) 0)
    ((:auto_direction __auto_direction) 0)
    ((:auto_clutch __auto_clutch) 0)
    ((:auto_throttle __auto_throttle) 0)
    ((:parking __parking) 0)
    ((:ignition __ignition) 0)
    ((:horn __horn) 0)
    ((:direct_control __direct_control) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _priority (float __priority))
   (setq _lifetime (float __lifetime))
   (setq _gear (round __gear))
   (setq _clutch (float __clutch))
   (setq _brake (float __brake))
   (setq _steering_wheel (float __steering_wheel))
   (setq _throttle (float __throttle))
   (setq _velocity (float __velocity))
   (setq _lights_brake (round __lights_brake))
   (setq _lights_reverse (round __lights_reverse))
   (setq _lights_warning (round __lights_warning))
   (setq _lights_high (round __lights_high))
   (setq _lights_medium (round __lights_medium))
   (setq _lights_left (round __lights_left))
   (setq _lights_right (round __lights_right))
   (setq _lights_danger (round __lights_danger))
   (setq _emergency (round __emergency))
   (setq _auto_ignition (round __auto_ignition))
   (setq _auto_brake (round __auto_brake))
   (setq _auto_direction (round __auto_direction))
   (setq _auto_clutch (round __auto_clutch))
   (setq _auto_throttle (round __auto_throttle))
   (setq _parking (round __parking))
   (setq _ignition (round __ignition))
   (setq _horn (round __horn))
   (setq _direct_control (round __direct_control))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:lifetime
   (&optional __lifetime)
   (if __lifetime (setq _lifetime __lifetime)) _lifetime)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:clutch
   (&optional __clutch)
   (if __clutch (setq _clutch __clutch)) _clutch)
  (:brake
   (&optional __brake)
   (if __brake (setq _brake __brake)) _brake)
  (:steering_wheel
   (&optional __steering_wheel)
   (if __steering_wheel (setq _steering_wheel __steering_wheel)) _steering_wheel)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:lights_brake
   (&optional __lights_brake)
   (if __lights_brake (setq _lights_brake __lights_brake)) _lights_brake)
  (:lights_reverse
   (&optional __lights_reverse)
   (if __lights_reverse (setq _lights_reverse __lights_reverse)) _lights_reverse)
  (:lights_warning
   (&optional __lights_warning)
   (if __lights_warning (setq _lights_warning __lights_warning)) _lights_warning)
  (:lights_high
   (&optional __lights_high)
   (if __lights_high (setq _lights_high __lights_high)) _lights_high)
  (:lights_medium
   (&optional __lights_medium)
   (if __lights_medium (setq _lights_medium __lights_medium)) _lights_medium)
  (:lights_left
   (&optional __lights_left)
   (if __lights_left (setq _lights_left __lights_left)) _lights_left)
  (:lights_right
   (&optional __lights_right)
   (if __lights_right (setq _lights_right __lights_right)) _lights_right)
  (:lights_danger
   (&optional __lights_danger)
   (if __lights_danger (setq _lights_danger __lights_danger)) _lights_danger)
  (:emergency
   (&optional __emergency)
   (if __emergency (setq _emergency __emergency)) _emergency)
  (:auto_ignition
   (&optional __auto_ignition)
   (if __auto_ignition (setq _auto_ignition __auto_ignition)) _auto_ignition)
  (:auto_brake
   (&optional __auto_brake)
   (if __auto_brake (setq _auto_brake __auto_brake)) _auto_brake)
  (:auto_direction
   (&optional __auto_direction)
   (if __auto_direction (setq _auto_direction __auto_direction)) _auto_direction)
  (:auto_clutch
   (&optional __auto_clutch)
   (if __auto_clutch (setq _auto_clutch __auto_clutch)) _auto_clutch)
  (:auto_throttle
   (&optional __auto_throttle)
   (if __auto_throttle (setq _auto_throttle __auto_throttle)) _auto_throttle)
  (:parking
   (&optional __parking)
   (if __parking (setq _parking __parking)) _parking)
  (:ignition
   (&optional __ignition)
   (if __ignition (setq _ignition __ignition)) _ignition)
  (:horn
   (&optional __horn)
   (if __horn (setq _horn __horn)) _horn)
  (:direct_control
   (&optional __direct_control)
   (if __direct_control (setq _direct_control __direct_control)) _direct_control)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _priority
    8
    ;; float64 _lifetime
    8
    ;; uint32 _gear
    4
    ;; float64 _clutch
    8
    ;; float64 _brake
    8
    ;; float64 _steering_wheel
    8
    ;; float64 _throttle
    8
    ;; float64 _velocity
    8
    ;; uint32 _lights_brake
    4
    ;; uint32 _lights_reverse
    4
    ;; uint32 _lights_warning
    4
    ;; uint32 _lights_high
    4
    ;; uint32 _lights_medium
    4
    ;; uint32 _lights_left
    4
    ;; uint32 _lights_right
    4
    ;; uint32 _lights_danger
    4
    ;; uint32 _emergency
    4
    ;; uint32 _auto_ignition
    4
    ;; uint32 _auto_brake
    4
    ;; uint32 _auto_direction
    4
    ;; uint32 _auto_clutch
    4
    ;; uint32 _auto_throttle
    4
    ;; uint32 _parking
    4
    ;; uint32 _ignition
    4
    ;; uint32 _horn
    4
    ;; uint32 _direct_control
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _priority
       (sys::poke _priority (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lifetime
       (sys::poke _lifetime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _gear
       (write-long _gear s)
     ;; float64 _clutch
       (sys::poke _clutch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _brake
       (sys::poke _brake (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steering_wheel
       (sys::poke _steering_wheel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _lights_brake
       (write-long _lights_brake s)
     ;; uint32 _lights_reverse
       (write-long _lights_reverse s)
     ;; uint32 _lights_warning
       (write-long _lights_warning s)
     ;; uint32 _lights_high
       (write-long _lights_high s)
     ;; uint32 _lights_medium
       (write-long _lights_medium s)
     ;; uint32 _lights_left
       (write-long _lights_left s)
     ;; uint32 _lights_right
       (write-long _lights_right s)
     ;; uint32 _lights_danger
       (write-long _lights_danger s)
     ;; uint32 _emergency
       (write-long _emergency s)
     ;; uint32 _auto_ignition
       (write-long _auto_ignition s)
     ;; uint32 _auto_brake
       (write-long _auto_brake s)
     ;; uint32 _auto_direction
       (write-long _auto_direction s)
     ;; uint32 _auto_clutch
       (write-long _auto_clutch s)
     ;; uint32 _auto_throttle
       (write-long _auto_throttle s)
     ;; uint32 _parking
       (write-long _parking s)
     ;; uint32 _ignition
       (write-long _ignition s)
     ;; uint32 _horn
       (write-long _horn s)
     ;; uint32 _direct_control
       (write-long _direct_control s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _priority
     (setq _priority (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lifetime
     (setq _lifetime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _gear
     (setq _gear (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _clutch
     (setq _clutch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _brake
     (setq _brake (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steering_wheel
     (setq _steering_wheel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _throttle
     (setq _throttle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _lights_brake
     (setq _lights_brake (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _lights_reverse
     (setq _lights_reverse (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _lights_warning
     (setq _lights_warning (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _lights_high
     (setq _lights_high (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _lights_medium
     (setq _lights_medium (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _lights_left
     (setq _lights_left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _lights_right
     (setq _lights_right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _lights_danger
     (setq _lights_danger (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _emergency
     (setq _emergency (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _auto_ignition
     (setq _auto_ignition (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _auto_brake
     (setq _auto_brake (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _auto_direction
     (setq _auto_direction (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _auto_clutch
     (setq _auto_clutch (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _auto_throttle
     (setq _auto_throttle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _parking
     (setq _parking (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _ignition
     (setq _ignition (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _horn
     (setq _horn (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _direct_control
     (setq _direct_control (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get atlascar_base::ManagerCommand :md5sum-) "45876c19b4f045f55316ae68c9a82049")
(setf (get atlascar_base::ManagerCommand :datatype-) "atlascar_base/ManagerCommand")
(setf (get atlascar_base::ManagerCommand :definition-)
      "Header header

float64 priority
float64 lifetime

uint32 gear
float64 clutch
float64 brake
float64 steering_wheel
float64 throttle
float64 velocity

uint32 lights_brake
uint32 lights_reverse
uint32 lights_warning
uint32 lights_high
uint32 lights_medium
uint32 lights_left
uint32 lights_right
uint32 lights_danger

uint32 emergency

uint32 auto_ignition
uint32 auto_brake
uint32 auto_direction
uint32 auto_clutch
uint32 auto_throttle

uint32 parking

uint32 ignition

uint32 horn

uint32 direct_control

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

")



(provide :atlascar_base/ManagerCommand "45876c19b4f045f55316ae68c9a82049")


