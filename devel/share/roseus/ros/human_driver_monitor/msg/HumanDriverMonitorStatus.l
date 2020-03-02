;; Auto-generated. Do not edit!


(when (boundp 'human_driver_monitor::HumanDriverMonitorStatus)
  (if (not (find-package "HUMAN_DRIVER_MONITOR"))
    (make-package "HUMAN_DRIVER_MONITOR"))
  (shadow 'HumanDriverMonitorStatus (find-package "HUMAN_DRIVER_MONITOR")))
(unless (find-package "HUMAN_DRIVER_MONITOR::HUMANDRIVERMONITORSTATUS")
  (make-package "HUMAN_DRIVER_MONITOR::HUMANDRIVERMONITORSTATUS"))

(in-package "ROS")
;;//! \htmlinclude HumanDriverMonitorStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass human_driver_monitor::HumanDriverMonitorStatus
  :super ros::object
  :slots (_header _lights_high _lights_medium _lights_left _lights_right _lights_danger _ignition _horn _throttle_pressure _brake_pressure _clutch_pressure ))

(defmethod human_driver_monitor::HumanDriverMonitorStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lights_high __lights_high) 0)
    ((:lights_medium __lights_medium) 0)
    ((:lights_left __lights_left) 0)
    ((:lights_right __lights_right) 0)
    ((:lights_danger __lights_danger) 0)
    ((:ignition __ignition) 0)
    ((:horn __horn) 0)
    ((:throttle_pressure __throttle_pressure) 0)
    ((:brake_pressure __brake_pressure) 0)
    ((:clutch_pressure __clutch_pressure) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _lights_high (round __lights_high))
   (setq _lights_medium (round __lights_medium))
   (setq _lights_left (round __lights_left))
   (setq _lights_right (round __lights_right))
   (setq _lights_danger (round __lights_danger))
   (setq _ignition (round __ignition))
   (setq _horn (round __horn))
   (setq _throttle_pressure (round __throttle_pressure))
   (setq _brake_pressure (round __brake_pressure))
   (setq _clutch_pressure (round __clutch_pressure))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
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
  (:ignition
   (&optional __ignition)
   (if __ignition (setq _ignition __ignition)) _ignition)
  (:horn
   (&optional __horn)
   (if __horn (setq _horn __horn)) _horn)
  (:throttle_pressure
   (&optional __throttle_pressure)
   (if __throttle_pressure (setq _throttle_pressure __throttle_pressure)) _throttle_pressure)
  (:brake_pressure
   (&optional __brake_pressure)
   (if __brake_pressure (setq _brake_pressure __brake_pressure)) _brake_pressure)
  (:clutch_pressure
   (&optional __clutch_pressure)
   (if __clutch_pressure (setq _clutch_pressure __clutch_pressure)) _clutch_pressure)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
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
    ;; uint32 _ignition
    4
    ;; uint32 _horn
    4
    ;; uint32 _throttle_pressure
    4
    ;; uint32 _brake_pressure
    4
    ;; uint32 _clutch_pressure
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
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
     ;; uint32 _ignition
       (write-long _ignition s)
     ;; uint32 _horn
       (write-long _horn s)
     ;; uint32 _throttle_pressure
       (write-long _throttle_pressure s)
     ;; uint32 _brake_pressure
       (write-long _brake_pressure s)
     ;; uint32 _clutch_pressure
       (write-long _clutch_pressure s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
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
   ;; uint32 _ignition
     (setq _ignition (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _horn
     (setq _horn (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _throttle_pressure
     (setq _throttle_pressure (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _brake_pressure
     (setq _brake_pressure (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _clutch_pressure
     (setq _clutch_pressure (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get human_driver_monitor::HumanDriverMonitorStatus :md5sum-) "e0f0d2c30fd975b578f76d6ff646b0d4")
(setf (get human_driver_monitor::HumanDriverMonitorStatus :datatype-) "human_driver_monitor/HumanDriverMonitorStatus")
(setf (get human_driver_monitor::HumanDriverMonitorStatus :definition-)
      "Header header

uint32 lights_high
uint32 lights_medium
uint32 lights_left
uint32 lights_right
uint32 lights_danger

uint32 ignition

uint32 horn

uint32 throttle_pressure
uint32 brake_pressure
uint32 clutch_pressure

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



(provide :human_driver_monitor/HumanDriverMonitorStatus "e0f0d2c30fd975b578f76d6ff646b0d4")


