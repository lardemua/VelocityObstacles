;; Auto-generated. Do not edit!


(when (boundp 'atlascar_base::ManagerStatus)
  (if (not (find-package "ATLASCAR_BASE"))
    (make-package "ATLASCAR_BASE"))
  (shadow 'ManagerStatus (find-package "ATLASCAR_BASE")))
(unless (find-package "ATLASCAR_BASE::MANAGERSTATUS")
  (make-package "ATLASCAR_BASE::MANAGERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ManagerStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass atlascar_base::ManagerStatus
  :super ros::object
  :slots (_header _gear _gearbox_status _clutch _brake _steering_wheel _rpm _lights_brake _lights_reverse _lights_warning _emergency _auto_ignition _auto_brake _auto_direction _auto_clutch _throttle _throttle_pedal _auto_throttle _velocity _count _pulses_sec _revolutions_sec _lights_high _lights_medium _lights_left _lights_right _lights_danger _ignition _horn _throttle_pressure _brake_pressure _clutch_pressure ))

(defmethod atlascar_base::ManagerStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gear __gear) 0)
    ((:gearbox_status __gearbox_status) "")
    ((:clutch __clutch) 0.0)
    ((:brake __brake) 0.0)
    ((:steering_wheel __steering_wheel) 0.0)
    ((:rpm __rpm) 0.0)
    ((:lights_brake __lights_brake) 0)
    ((:lights_reverse __lights_reverse) 0)
    ((:lights_warning __lights_warning) 0)
    ((:emergency __emergency) 0)
    ((:auto_ignition __auto_ignition) 0)
    ((:auto_brake __auto_brake) 0)
    ((:auto_direction __auto_direction) 0)
    ((:auto_clutch __auto_clutch) 0)
    ((:throttle __throttle) 0.0)
    ((:throttle_pedal __throttle_pedal) 0.0)
    ((:auto_throttle __auto_throttle) 0)
    ((:velocity __velocity) 0.0)
    ((:count __count) 0.0)
    ((:pulses_sec __pulses_sec) 0.0)
    ((:revolutions_sec __revolutions_sec) 0.0)
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
   (setq _gear (round __gear))
   (setq _gearbox_status (string __gearbox_status))
   (setq _clutch (float __clutch))
   (setq _brake (float __brake))
   (setq _steering_wheel (float __steering_wheel))
   (setq _rpm (float __rpm))
   (setq _lights_brake (round __lights_brake))
   (setq _lights_reverse (round __lights_reverse))
   (setq _lights_warning (round __lights_warning))
   (setq _emergency (round __emergency))
   (setq _auto_ignition (round __auto_ignition))
   (setq _auto_brake (round __auto_brake))
   (setq _auto_direction (round __auto_direction))
   (setq _auto_clutch (round __auto_clutch))
   (setq _throttle (float __throttle))
   (setq _throttle_pedal (float __throttle_pedal))
   (setq _auto_throttle (round __auto_throttle))
   (setq _velocity (float __velocity))
   (setq _count (float __count))
   (setq _pulses_sec (float __pulses_sec))
   (setq _revolutions_sec (float __revolutions_sec))
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
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:gearbox_status
   (&optional __gearbox_status)
   (if __gearbox_status (setq _gearbox_status __gearbox_status)) _gearbox_status)
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
  (:lights_brake
   (&optional __lights_brake)
   (if __lights_brake (setq _lights_brake __lights_brake)) _lights_brake)
  (:lights_reverse
   (&optional __lights_reverse)
   (if __lights_reverse (setq _lights_reverse __lights_reverse)) _lights_reverse)
  (:lights_warning
   (&optional __lights_warning)
   (if __lights_warning (setq _lights_warning __lights_warning)) _lights_warning)
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
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:throttle_pedal
   (&optional __throttle_pedal)
   (if __throttle_pedal (setq _throttle_pedal __throttle_pedal)) _throttle_pedal)
  (:auto_throttle
   (&optional __auto_throttle)
   (if __auto_throttle (setq _auto_throttle __auto_throttle)) _auto_throttle)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:pulses_sec
   (&optional __pulses_sec)
   (if __pulses_sec (setq _pulses_sec __pulses_sec)) _pulses_sec)
  (:revolutions_sec
   (&optional __revolutions_sec)
   (if __revolutions_sec (setq _revolutions_sec __revolutions_sec)) _revolutions_sec)
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
    ;; uint32 _gear
    4
    ;; string _gearbox_status
    4 (length _gearbox_status)
    ;; float64 _clutch
    8
    ;; float64 _brake
    8
    ;; float64 _steering_wheel
    8
    ;; float64 _rpm
    8
    ;; uint32 _lights_brake
    4
    ;; uint32 _lights_reverse
    4
    ;; uint32 _lights_warning
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
    ;; float64 _throttle
    8
    ;; float64 _throttle_pedal
    8
    ;; uint32 _auto_throttle
    4
    ;; float64 _velocity
    8
    ;; float64 _count
    8
    ;; float64 _pulses_sec
    8
    ;; float64 _revolutions_sec
    8
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
     ;; uint32 _gear
       (write-long _gear s)
     ;; string _gearbox_status
       (write-long (length _gearbox_status) s) (princ _gearbox_status s)
     ;; float64 _clutch
       (sys::poke _clutch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _brake
       (sys::poke _brake (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steering_wheel
       (sys::poke _steering_wheel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm
       (sys::poke _rpm (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _lights_brake
       (write-long _lights_brake s)
     ;; uint32 _lights_reverse
       (write-long _lights_reverse s)
     ;; uint32 _lights_warning
       (write-long _lights_warning s)
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
     ;; float64 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _throttle_pedal
       (sys::poke _throttle_pedal (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _auto_throttle
       (write-long _auto_throttle s)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _count
       (sys::poke _count (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pulses_sec
       (sys::poke _pulses_sec (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _revolutions_sec
       (sys::poke _revolutions_sec (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; uint32 _gear
     (setq _gear (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _gearbox_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gearbox_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _clutch
     (setq _clutch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _brake
     (setq _brake (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steering_wheel
     (setq _steering_wheel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm
     (setq _rpm (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _lights_brake
     (setq _lights_brake (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _lights_reverse
     (setq _lights_reverse (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _lights_warning
     (setq _lights_warning (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;; float64 _throttle
     (setq _throttle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _throttle_pedal
     (setq _throttle_pedal (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _auto_throttle
     (setq _auto_throttle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _count
     (setq _count (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pulses_sec
     (setq _pulses_sec (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _revolutions_sec
     (setq _revolutions_sec (sys::peek buf ptr- :double)) (incf ptr- 8)
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

(setf (get atlascar_base::ManagerStatus :md5sum-) "5f7f354f13aa1404ddc73a37a6469fed")
(setf (get atlascar_base::ManagerStatus :datatype-) "atlascar_base/ManagerStatus")
(setf (get atlascar_base::ManagerStatus :definition-)
      "Header header

#from gearbox
uint32 gear				    #done
string gearbox_status	    #pending

#from plc
float64 clutch			    #done
float64 brake			    #done
float64 steering_wheel  	#done
float64 rpm				    #done

uint32 lights_brake		    #pending
uint32 lights_reverse	    #pending
uint32 lights_warning	    #pending

uint32 emergency		    #done

uint32 auto_ignition	    #done
uint32 auto_brake		    #done
uint32 auto_direction	    #done
uint32 auto_clutch		    #done

#from throttle
float64 throttle		    #pending
float64 throttle_pedal	    #done
uint32 auto_throttle	    #done

#from odometry
float64 velocity		    #done
float64 count              #done
float64 pulses_sec         #done
float64 revolutions_sec    #done


#from driver
uint32 lights_high		    #done
uint32 lights_medium	    #done
uint32 lights_left		    #done
uint32 lights_right		    #done
uint32 lights_danger	    #done

uint32 ignition			    #done

uint32 horn				    #pending

uint32 throttle_pressure	#done
uint32 brake_pressure		#done
uint32 clutch_pressure		#done
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



(provide :atlascar_base/ManagerStatus "5f7f354f13aa1404ddc73a37a6469fed")


