;; Auto-generated. Do not edit!


(when (boundp 'atlascar_base::GearboxStatus)
  (if (not (find-package "ATLASCAR_BASE"))
    (make-package "ATLASCAR_BASE"))
  (shadow 'GearboxStatus (find-package "ATLASCAR_BASE")))
(unless (find-package "ATLASCAR_BASE::GEARBOXSTATUS")
  (make-package "ATLASCAR_BASE::GEARBOXSTATUS"))

(in-package "ROS")
;;//! \htmlinclude GearboxStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass atlascar_base::GearboxStatus
  :super ros::object
  :slots (_header _gear _status ))

(defmethod atlascar_base::GearboxStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gear __gear) 0)
    ((:status __status) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _gear (round __gear))
   (setq _status (string __status))
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
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _gear
    4
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _gear
       (write-long _gear s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _gear
     (setq _gear (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get atlascar_base::GearboxStatus :md5sum-) "90990ff6d59265aaddd2301975eb85dc")
(setf (get atlascar_base::GearboxStatus :datatype-) "atlascar_base/GearboxStatus")
(setf (get atlascar_base::GearboxStatus :definition-)
      "Header header

uint32 gear
string status
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



(provide :atlascar_base/GearboxStatus "90990ff6d59265aaddd2301975eb85dc")


