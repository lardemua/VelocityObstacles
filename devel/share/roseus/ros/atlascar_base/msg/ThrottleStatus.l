;; Auto-generated. Do not edit!


(when (boundp 'atlascar_base::ThrottleStatus)
  (if (not (find-package "ATLASCAR_BASE"))
    (make-package "ATLASCAR_BASE"))
  (shadow 'ThrottleStatus (find-package "ATLASCAR_BASE")))
(unless (find-package "ATLASCAR_BASE::THROTTLESTATUS")
  (make-package "ATLASCAR_BASE::THROTTLESTATUS"))

(in-package "ROS")
;;//! \htmlinclude ThrottleStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass atlascar_base::ThrottleStatus
  :super ros::object
  :slots (_header _throttle _footPedal _mode ))

(defmethod atlascar_base::ThrottleStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:throttle __throttle) 0.0)
    ((:footPedal __footPedal) 0.0)
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _throttle (float __throttle))
   (setq _footPedal (float __footPedal))
   (setq _mode (round __mode))
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
  (:footPedal
   (&optional __footPedal)
   (if __footPedal (setq _footPedal __footPedal)) _footPedal)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _throttle
    8
    ;; float64 _footPedal
    8
    ;; uint32 _mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _footPedal
       (sys::poke _footPedal (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _mode
       (write-long _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _throttle
     (setq _throttle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _footPedal
     (setq _footPedal (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get atlascar_base::ThrottleStatus :md5sum-) "0f0f061e0791f9ddcde2a12e67cbfa4d")
(setf (get atlascar_base::ThrottleStatus :datatype-) "atlascar_base/ThrottleStatus")
(setf (get atlascar_base::ThrottleStatus :definition-)
      "Header header

float64 throttle
float64 footPedal
uint32 mode
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



(provide :atlascar_base/ThrottleStatus "0f0f061e0791f9ddcde2a12e67cbfa4d")


