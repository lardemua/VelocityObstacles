;; Auto-generated. Do not edit!


(when (boundp 'odometer::OdometerStatus)
  (if (not (find-package "ODOMETER"))
    (make-package "ODOMETER"))
  (shadow 'OdometerStatus (find-package "ODOMETER")))
(unless (find-package "ODOMETER::ODOMETERSTATUS")
  (make-package "ODOMETER::ODOMETERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude OdometerStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass odometer::OdometerStatus
  :super ros::object
  :slots (_header _count _pulses_sec _revolutions_sec _velocity ))

(defmethod odometer::OdometerStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:count __count) 0.0)
    ((:pulses_sec __pulses_sec) 0.0)
    ((:revolutions_sec __revolutions_sec) 0.0)
    ((:velocity __velocity) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _count (float __count))
   (setq _pulses_sec (float __pulses_sec))
   (setq _revolutions_sec (float __revolutions_sec))
   (setq _velocity (float __velocity))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:pulses_sec
   (&optional __pulses_sec)
   (if __pulses_sec (setq _pulses_sec __pulses_sec)) _pulses_sec)
  (:revolutions_sec
   (&optional __revolutions_sec)
   (if __revolutions_sec (setq _revolutions_sec __revolutions_sec)) _revolutions_sec)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _count
    8
    ;; float64 _pulses_sec
    8
    ;; float64 _revolutions_sec
    8
    ;; float64 _velocity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _count
       (sys::poke _count (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pulses_sec
       (sys::poke _pulses_sec (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _revolutions_sec
       (sys::poke _revolutions_sec (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _count
     (setq _count (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pulses_sec
     (setq _pulses_sec (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _revolutions_sec
     (setq _revolutions_sec (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get odometer::OdometerStatus :md5sum-) "4addd405435fa107b3c310744e623fd6")
(setf (get odometer::OdometerStatus :datatype-) "odometer/OdometerStatus")
(setf (get odometer::OdometerStatus :definition-)
      "Header header

float64 count
float64 pulses_sec
float64 revolutions_sec
float64 velocity
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



(provide :odometer/OdometerStatus "4addd405435fa107b3c310744e623fd6")


