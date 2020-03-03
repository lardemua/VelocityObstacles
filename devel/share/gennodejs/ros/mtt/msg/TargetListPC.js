// Auto-generated. Do not edit!

// (in-package mtt.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TargetListPC {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.position = null;
      this.velocity = null;
      this.obstacle_lines = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = [];
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('obstacle_lines')) {
        this.obstacle_lines = initObj.obstacle_lines
      }
      else {
        this.obstacle_lines = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TargetListPC
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _arraySerializer.uint32(obj.id, buffer, bufferOffset, null);
    // Serialize message field [position]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [obstacle_lines]
    // Serialize the length for message field [obstacle_lines]
    bufferOffset = _serializer.uint32(obj.obstacle_lines.length, buffer, bufferOffset);
    obj.obstacle_lines.forEach((val) => {
      bufferOffset = sensor_msgs.msg.PointCloud2.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TargetListPC
    let len;
    let data = new TargetListPC(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [position]
    data.position = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacle_lines]
    // Deserialize array length for message field [obstacle_lines]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacle_lines = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacle_lines[i] = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.id.length;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.position);
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.velocity);
    object.obstacle_lines.forEach((val) => {
      length += sensor_msgs.msg.PointCloud2.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mtt/TargetListPC';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc4e1ab399de53d9a4d2b0838677506f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #the header of the message
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
    # contents of the "fields" array.
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TargetListPC(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = []
    }

    if (msg.position !== undefined) {
      resolved.position = sensor_msgs.msg.PointCloud2.Resolve(msg.position)
    }
    else {
      resolved.position = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = sensor_msgs.msg.PointCloud2.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.obstacle_lines !== undefined) {
      resolved.obstacle_lines = new Array(msg.obstacle_lines.length);
      for (let i = 0; i < resolved.obstacle_lines.length; ++i) {
        resolved.obstacle_lines[i] = sensor_msgs.msg.PointCloud2.Resolve(msg.obstacle_lines[i]);
      }
    }
    else {
      resolved.obstacle_lines = []
    }

    return resolved;
    }
};

module.exports = TargetListPC;
