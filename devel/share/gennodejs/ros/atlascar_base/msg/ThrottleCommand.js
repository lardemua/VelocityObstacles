// Auto-generated. Do not edit!

// (in-package atlascar_base.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ThrottleCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.throttle = null;
      this.mode = null;
      this.priority = null;
      this.lifetime = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('throttle')) {
        this.throttle = initObj.throttle
      }
      else {
        this.throttle = 0.0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = 0.0;
      }
      if (initObj.hasOwnProperty('lifetime')) {
        this.lifetime = initObj.lifetime
      }
      else {
        this.lifetime = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ThrottleCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [throttle]
    bufferOffset = _serializer.float64(obj.throttle, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint32(obj.mode, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = _serializer.float64(obj.priority, buffer, bufferOffset);
    // Serialize message field [lifetime]
    bufferOffset = _serializer.float64(obj.lifetime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ThrottleCommand
    let len;
    let data = new ThrottleCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [throttle]
    data.throttle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lifetime]
    data.lifetime = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'atlascar_base/ThrottleCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '699f454e929c5ffcacbe00a57838c2fe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ThrottleCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.throttle !== undefined) {
      resolved.throttle = msg.throttle;
    }
    else {
      resolved.throttle = 0.0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = 0.0
    }

    if (msg.lifetime !== undefined) {
      resolved.lifetime = msg.lifetime;
    }
    else {
      resolved.lifetime = 0.0
    }

    return resolved;
    }
};

module.exports = ThrottleCommand;
