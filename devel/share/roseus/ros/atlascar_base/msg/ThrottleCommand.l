;; Auto-generated. Do not edit!


(when (boundp 'atlascar_base::ThrottleCommand)
  (if (not (find-package "ATLASCAR_BASE"))
    (make-package "ATLASCAR_BASE"))
  (shadow 'ThrottleCommand (find-package "ATLASCAR_BASE")))
(unless (find-package "ATLASCAR_BASE::THROTTLECOMMAND")
  (make-package "ATLASCAR_BASE::THROTTLECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ThrottleCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass atlascar_base::ThrottleCommand
  :super ros::object
  :slots (_header _throttle _mode _priority _lifetime ))

(defmethod atlascar_base::ThrottleCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:throttle __throttle) 0.0)
    ((:mode __mode) 0)
    ((:priority __priority) 0.0)
    ((:lifetime __lifetime) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _throttle (float __throttle))
   (setq _mode (round __mode))
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
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
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
    ;; float64 _throttle
    8
    ;; uint32 _mode
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
     ;; float64 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _mode
       (write-long _mode s)
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
   ;; float64 _throttle
     (setq _throttle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _priority
     (setq _priority (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lifetime
     (setq _lifetime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get atlascar_base::ThrottleCommand :md5sum-) "699f454e929c5ffcacbe00a57838c2fe")
(setf (get atlascar_base::ThrottleCommand :datatype-) "atlascar_base/ThrottleCommand")
(setf (get atlascar_base::ThrottleCommand :definition-)
      "Header header

float64 throttle
uint32 mode

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



(provide :atlascar_base/ThrottleCommand "699f454e929c5ffcacbe00a57838c2fe")


