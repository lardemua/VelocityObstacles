// Auto-generated. Do not edit!

// (in-package odometer.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class OdometerStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.count = null;
      this.pulses_sec = null;
      this.revolutions_sec = null;
      this.velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0.0;
      }
      if (initObj.hasOwnProperty('pulses_sec')) {
        this.pulses_sec = initObj.pulses_sec
      }
      else {
        this.pulses_sec = 0.0;
      }
      if (initObj.hasOwnProperty('revolutions_sec')) {
        this.revolutions_sec = initObj.revolutions_sec
      }
      else {
        this.revolutions_sec = 0.0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OdometerStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.float64(obj.count, buffer, bufferOffset);
    // Serialize message field [pulses_sec]
    bufferOffset = _serializer.float64(obj.pulses_sec, buffer, bufferOffset);
    // Serialize message field [revolutions_sec]
    bufferOffset = _serializer.float64(obj.revolutions_sec, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float64(obj.velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OdometerStatus
    let len;
    let data = new OdometerStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pulses_sec]
    data.pulses_sec = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [revolutions_sec]
    data.revolutions_sec = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'odometer/OdometerStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4addd405435fa107b3c310744e623fd6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OdometerStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0.0
    }

    if (msg.pulses_sec !== undefined) {
      resolved.pulses_sec = msg.pulses_sec;
    }
    else {
      resolved.pulses_sec = 0.0
    }

    if (msg.revolutions_sec !== undefined) {
      resolved.revolutions_sec = msg.revolutions_sec;
    }
    else {
      resolved.revolutions_sec = 0.0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    return resolved;
    }
};

module.exports = OdometerStatus;
