;; Auto-generated. Do not edit!


(when (boundp 'mtt::TargetListPC)
  (if (not (find-package "MTT"))
    (make-package "MTT"))
  (shadow 'TargetListPC (find-package "MTT")))
(unless (find-package "MTT::TARGETLISTPC")
  (make-package "MTT::TARGETLISTPC"))

(in-package "ROS")
;;//! \htmlinclude TargetListPC.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mtt::TargetListPC
  :super ros::object
  :slots (_header _id _position _velocity _obstacle_lines ))

(defmethod mtt::TargetListPC
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:position __position) (instance sensor_msgs::PointCloud2 :init))
    ((:velocity __velocity) (instance sensor_msgs::PointCloud2 :init))
    ((:obstacle_lines __obstacle_lines) (let (r) (dotimes (i 0) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id __id)
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _obstacle_lines __obstacle_lines)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:obstacle_lines
   (&rest __obstacle_lines)
   (if (keywordp (car __obstacle_lines))
       (send* _obstacle_lines __obstacle_lines)
     (progn
       (if __obstacle_lines (setq _obstacle_lines (car __obstacle_lines)))
       _obstacle_lines)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32[] _id
    (* 4    (length _id)) 4
    ;; sensor_msgs/PointCloud2 _position
    (send _position :serialization-length)
    ;; sensor_msgs/PointCloud2 _velocity
    (send _velocity :serialization-length)
    ;; sensor_msgs/PointCloud2[] _obstacle_lines
    (apply #'+ (send-all _obstacle_lines :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32[] _id
     (write-long (length _id) s)
     (dotimes (i (length _id))
       (write-long (elt _id i) s)
       )
     ;; sensor_msgs/PointCloud2 _position
       (send _position :serialize s)
     ;; sensor_msgs/PointCloud2 _velocity
       (send _velocity :serialize s)
     ;; sensor_msgs/PointCloud2[] _obstacle_lines
     (write-long (length _obstacle_lines) s)
     (dolist (elem _obstacle_lines)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32[] _id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _id i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; sensor_msgs/PointCloud2 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; sensor_msgs/PointCloud2 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; sensor_msgs/PointCloud2[] _obstacle_lines
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacle_lines (let (r) (dotimes (i n) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
     (dolist (elem- _obstacle_lines)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mtt::TargetListPC :md5sum-) "dc4e1ab399de53d9a4d2b0838677506f")
(setf (get mtt::TargetListPC :datatype-) "mtt/TargetListPC")
(setf (get mtt::TargetListPC :definition-)
      "#the header of the message
Header header
uint32[] id
sensor_msgs/PointCloud2 position
sensor_msgs/PointCloud2 velocity
sensor_msgs/PointCloud2[] obstacle_lines

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

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

")



(provide :mtt/TargetListPC "dc4e1ab399de53d9a4d2b0838677506f")


