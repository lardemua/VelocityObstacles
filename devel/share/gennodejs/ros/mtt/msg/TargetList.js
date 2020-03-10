// Auto-generated. Do not edit!

// (in-package mtt.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Target = require('./Target.js');

//-----------------------------------------------------------

class TargetList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Targets = null;
    }
    else {
      if (initObj.hasOwnProperty('Targets')) {
        this.Targets = initObj.Targets
      }
      else {
        this.Targets = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TargetList
    // Serialize message field [Targets]
    // Serialize the length for message field [Targets]
    bufferOffset = _serializer.uint32(obj.Targets.length, buffer, bufferOffset);
    obj.Targets.forEach((val) => {
      bufferOffset = Target.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TargetList
    let len;
    let data = new TargetList(null);
    // Deserialize message field [Targets]
    // Deserialize array length for message field [Targets]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.Targets = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.Targets[i] = Target.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.Targets.forEach((val) => {
      length += Target.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mtt/TargetList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b8607967434b3d13ee25504cdb114f58';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #the header of the message
    Target[] Targets
    
    ================================================================================
    MSG: mtt/Target
    #the header of the message
    Header header
    uint32 id
    geometry_msgs/Pose pose
    geometry_msgs/Point initialpose
    geometry_msgs/Point finalpose
    geometry_msgs/Twist velocity
    float64 size
    float64 radius
    
    #sensor_msgs/PointCloud2 position
    #sensor_msgs/PointCloud2 velocity
    #sensor_msgs/PointCloud2[] obstacle_lines
    
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TargetList(null);
    if (msg.Targets !== undefined) {
      resolved.Targets = new Array(msg.Targets.length);
      for (let i = 0; i < resolved.Targets.length; ++i) {
        resolved.Targets[i] = Target.Resolve(msg.Targets[i]);
      }
    }
    else {
      resolved.Targets = []
    }

    return resolved;
    }
};

module.exports = TargetList;
