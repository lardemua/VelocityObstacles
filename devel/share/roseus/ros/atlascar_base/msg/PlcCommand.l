;; Auto-generated. Do not edit!


(when (boundp 'atlascar_base::PlcCommand)
  (if (not (find-package "ATLASCAR_BASE"))
    (make-package "ATLASCAR_BASE"))
  (shadow 'PlcCommand (find-package "ATLASCAR_BASE")))
(unless (find-package "ATLASCAR_BASE::PLCCOMMAND")
  (make-package "ATLASCAR_BASE::PLCCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude PlcCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass atlascar_base::PlcCommand
  :super ros::object
  :slots (_header _clutch _brake _steering_wheel _rpm _lights_high _lights_medium _lights_minimum _lights_left _lights_right _lights_brake _lights_reverse _lights_warning _ignition _emergency _auto_ignition _auto_brake _auto_direction _auto_clutch _priority _lifetime ))

(defmethod atlascar_base::PlcCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:clutch __clutch) 0.0)
    ((:brake __brake) 0.0)
    ((:steering_wheel __steering_wheel) 0.0)
    ((:rpm __rpm) 0.0)
    ((:lights_high __lights_high) 0)
    ((:lights_medium __lights_medium) 0)
    ((:lights_minimum __lights_minimum) 0)
    ((:lights_left __lights_left) 0)
    ((:lights_right __lights_right) 0)
    ((:lights_brake __lights_brake) 0)
    ((:lights_reverse __lights_reverse) 0)
    ((:lights_warning __lights_warning) 0)
    ((:ignition __ignition) 0)
    ((:emergency __emergency) 0)
    ((:auto_ignition __auto_ignition) 0)
    ((:auto_brake __auto_brake) 0)
    ((:auto_direction __auto_direction) 0)
    ((:auto_clutch __auto_clutch) 0)
    ((:priority __priority) 0.0)
    ((:lifetime __lifetime) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _clutch (float __clutch))
   (setq _brake (float __brake))
   (setq _steering_wheel (float __steering_wheel))
   (setq _rpm (float __rpm))
   (setq _lights_high (round __lights_high))
   (setq _lights_medium (round __lights_medium))
   (setq _lights_minimum (round __lights_minimum))
   (setq _lights_left (round __lights_left))
   (setq _lights_right (round __lights_right))
   (setq _lights_brake (round __lights_brake))
   (setq _lights_reverse (round __lights_reverse))
   (setq _lights_warning (round __lights_warning))
   (setq _ignition (round __ignition))
   (setq _emergency (round __emergency))
   (setq _auto_ignition (round __auto_ignition))
   (setq _auto_brake (round __auto_brake))
   (setq _auto_direction (round __auto_direction))
   (setq _auto_clutch (round __auto_clutch))
   (setq _priority (float __priority))
   (setq _lifetime (float __lifetime))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:clutch
   (&optional __clutch)
   (if __clutch (setq _clutch __clutch)) _clutch)
  (:brake
   (&optional __brake)
   (if __brake (setq _brake __brake)) _brake)
  (:steering_wheel
   (&optional __steering_wheel)
   (if __steering_wheel (setq _steering_wheel __steering_wheel)) _steering_wheel)
  (:rpm
   (&optional __rpm)
   (if __rpm (setq _rpm __rpm)) _rpm)
  (:lights_high
   (&optional __lights_high)
   (if __lights_high (setq _lights_high __lights_high)) _lights_high)
  (:lights_medium
   (&optional __lights_medium)
   (if __lights_medium (setq _lights_medium __lights_medium)) _lights_medium)
  (:lights_minimum
   (&optional __lights_minimum)
   (if __lights_minimum (setq _lights_minimum __lights_minimum)) _lights_minimum)
  (:lights_left
   (&optional __lights_left)
   (if __lights_left (setq _lights_left __lights_left)) _lights_left)
  (:lights_right
   (&optional __lights_right)
   (if __lights_right (setq _lights_right __lights_right)) _lights_right)
  (:lights_brake
   (&optional __lights_brake)
   (if __lights_brake (setq _lights_brake __lights_brake)) _lights_brake)
  (:lights_reverse
   (&optional __lights_reverse)
   (if __lights_reverse (setq _lights_reverse __lights_reverse)) _lights_reverse)
  (:lights_warning
   (&optional __lights_warning)
   (if __lights_warning (setq _lights_warning __lights_warning)) _lights_warning)
  (:ignition
   (&optional __ignition)
   (if __ignition (setq _ignition __ignition)) _ignition)
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
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:lifetime
   (&optional __lifetime)
   (if __lifetime (setq _lifetime __lifetime)) _lifetime)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _clutch
    8
    ;; float64 _brake
    8
    ;; float64 _steering_wheel
    8
    ;; float64 _rpm
    8
    ;; uint32 _lights_high
    4
    ;; uint32 _lights_medium
    4
    ;; uint32 _lights_minimum
    4
    ;; uint32 _lights_left
    4
    ;; uint32 _lights_right
    4
    ;; uint32 _lights_brake
    4
    ;; uint32 _lights_reverse
    4
    ;; uint32 _lights_warning
    4
    ;; uint32 _ignition
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
    ;; float64 _priority
    8
    ;; float64 _lifetime
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _clutch
       (sys::poke _clutch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _brake
       (sys::poke _brake (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steering_wheel
       (sys::poke _steering_wheel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm
       (sys::poke _rpm (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _lights_high
       (write-long _lights_high s)
     ;; uint32 _lights_medium
       (write-long _lights_medium s)
     ;; uint32 _lights_minimum
       (write-long _lights_minimum s)
     ;; uint32 _lights_left
       (write-long _lights_left s)
     ;; uint32 _lights_right
       (write-long _lights_right s)
     ;; uint32 _lights_brake
       (write-long _lights_brake s)
     ;; uint32 _lights_reverse
       (write-long _lights_reverse s)
     ;; uint32 _lights_warning
       (write-long _lights_warning s)
     ;; uint32 _ignition
       (write-long _ignition s)
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
     ;; float64 _priority
       (sys::poke _priority (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lifetime
       (sys::poke _lifetime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _clutch
     (setq _clutch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _brake
     (setq _brake (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steering_wheel
     (setq _steering_wheel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm
     (setq _rpm (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _lights_high
     (setq _lights_high (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _lights_medium
     (setq _lights_medium (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _lights_minimum
     (setq _lights_minimum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _lights_left
     (setq _lights_left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _lights_right
     (setq _lights_right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _lights_brake
     (setq _lights_brake (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _lights_reverse
     (setq _lights_reverse (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _lights_warning
     (setq _lights_warning (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _ignition
     (setq _ignition (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;; float64 _priority
     (setq _priority (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lifetime
     (setq _lifetime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get atlascar_base::PlcCommand :md5sum-) "efb734467385cefb807dd165a73e2077")
(setf (get atlascar_base::PlcCommand :datatype-) "atlascar_base/PlcCommand")
(setf (get atlascar_base::PlcCommand :definition-)
      "Header header

float64 clutch
float64 brake
float64 steering_wheel
float64 rpm

uint32 lights_high
uint32 lights_medium
uint32 lights_minimum
uint32 lights_left
uint32 lights_right
uint32 lights_brake
uint32 lights_reverse
uint32 lights_warning

uint32 ignition
uint32 emergency

uint32 auto_ignition
uint32 auto_brake
uint32 auto_direction
uint32 auto_clutch

float64 priority
float64 lifetime
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



(provide :atlascar_base/PlcCommand "efb734467385cefb807dd165a73e2077")


