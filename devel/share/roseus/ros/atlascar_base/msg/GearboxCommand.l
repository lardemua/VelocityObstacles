;; Auto-generated. Do not edit!


(when (boundp 'atlascar_base::GearboxCommand)
  (if (not (find-package "ATLASCAR_BASE"))
    (make-package "ATLASCAR_BASE"))
  (shadow 'GearboxCommand (find-package "ATLASCAR_BASE")))
(unless (find-package "ATLASCAR_BASE::GEARBOXCOMMAND")
  (make-package "ATLASCAR_BASE::GEARBOXCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude GearboxCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass atlascar_base::GearboxCommand
  :super ros::object
  :slots (_header _gear _priority _lifetime ))

(defmethod atlascar_base::GearboxCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gear __gear) 0)
    ((:priority __priority) 0.0)
    ((:lifetime __lifetime) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _gear (round __gear))
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
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
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
    ;; uint32 _gear
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
     ;; uint32 _gear
       (write-long _gear s)
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
   ;; uint32 _gear
     (setq _gear (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _priority
     (setq _priority (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lifetime
     (setq _lifetime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get atlascar_base::GearboxCommand :md5sum-) "cbb552e92ed51b0132f43a0b494df5e6")
(setf (get atlascar_base::GearboxCommand :datatype-) "atlascar_base/GearboxCommand")
(setf (get atlascar_base::GearboxCommand :definition-)
      "Header header

uint32 gear

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



(provide :atlascar_base/GearboxCommand "cbb552e92ed51b0132f43a0b494df5e6")


