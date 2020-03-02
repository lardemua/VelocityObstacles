// Auto-generated. Do not edit!

// (in-package human_driver_monitor.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HumanDriverMonitorStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lights_high = null;
      this.lights_medium = null;
      this.lights_left = null;
      this.lights_right = null;
      this.lights_danger = null;
      this.ignition = null;
      this.horn = null;
      this.throttle_pressure = null;
      this.brake_pressure = null;
      this.clutch_pressure = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lights_high')) {
        this.lights_high = initObj.lights_high
      }
      else {
        this.lights_high = 0;
      }
      if (initObj.hasOwnProperty('lights_medium')) {
        this.lights_medium = initObj.lights_medium
      }
      else {
        this.lights_medium = 0;
      }
      if (initObj.hasOwnProperty('lights_left')) {
        this.lights_left = initObj.lights_left
      }
      else {
        this.lights_left = 0;
      }
      if (initObj.hasOwnProperty('lights_right')) {
        this.lights_right = initObj.lights_right
      }
      else {
        this.lights_right = 0;
      }
      if (initObj.hasOwnProperty('lights_danger')) {
        this.lights_danger = initObj.lights_danger
      }
      else {
        this.lights_danger = 0;
      }
      if (initObj.hasOwnProperty('ignition')) {
        this.ignition = initObj.ignition
      }
      else {
        this.ignition = 0;
      }
      if (initObj.hasOwnProperty('horn')) {
        this.horn = initObj.horn
      }
      else {
        this.horn = 0;
      }
      if (initObj.hasOwnProperty('throttle_pressure')) {
        this.throttle_pressure = initObj.throttle_pressure
      }
      else {
        this.throttle_pressure = 0;
      }
      if (initObj.hasOwnProperty('brake_pressure')) {
        this.brake_pressure = initObj.brake_pressure
      }
      else {
        this.brake_pressure = 0;
      }
      if (initObj.hasOwnProperty('clutch_pressure')) {
        this.clutch_pressure = initObj.clutch_pressure
      }
      else {
        this.clutch_pressure = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HumanDriverMonitorStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lights_high]
    bufferOffset = _serializer.uint32(obj.lights_high, buffer, bufferOffset);
    // Serialize message field [lights_medium]
    bufferOffset = _serializer.uint32(obj.lights_medium, buffer, bufferOffset);
    // Serialize message field [lights_left]
    bufferOffset = _serializer.uint32(obj.lights_left, buffer, bufferOffset);
    // Serialize message field [lights_right]
    bufferOffset = _serializer.uint32(obj.lights_right, buffer, bufferOffset);
    // Serialize message field [lights_danger]
    bufferOffset = _serializer.uint32(obj.lights_danger, buffer, bufferOffset);
    // Serialize message field [ignition]
    bufferOffset = _serializer.uint32(obj.ignition, buffer, bufferOffset);
    // Serialize message field [horn]
    bufferOffset = _serializer.uint32(obj.horn, buffer, bufferOffset);
    // Serialize message field [throttle_pressure]
    bufferOffset = _serializer.uint32(obj.throttle_pressure, buffer, bufferOffset);
    // Serialize message field [brake_pressure]
    bufferOffset = _serializer.uint32(obj.brake_pressure, buffer, bufferOffset);
    // Serialize message field [clutch_pressure]
    bufferOffset = _serializer.uint32(obj.clutch_pressure, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HumanDriverMonitorStatus
    let len;
    let data = new HumanDriverMonitorStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lights_high]
    data.lights_high = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lights_medium]
    data.lights_medium = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lights_left]
    data.lights_left = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lights_right]
    data.lights_right = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lights_danger]
    data.lights_danger = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ignition]
    data.ignition = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [horn]
    data.horn = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [throttle_pressure]
    data.throttle_pressure = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [brake_pressure]
    data.brake_pressure = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [clutch_pressure]
    data.clutch_pressure = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'human_driver_monitor/HumanDriverMonitorStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e0f0d2c30fd975b578f76d6ff646b0d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint32 lights_high
    uint32 lights_medium
    uint32 lights_left
    uint32 lights_right
    uint32 lights_danger
    
    uint32 ignition
    
    uint32 horn
    
    uint32 throttle_pressure
    uint32 brake_pressure
    uint32 clutch_pressure
    
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
    const resolved = new HumanDriverMonitorStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lights_high !== undefined) {
      resolved.lights_high = msg.lights_high;
    }
    else {
      resolved.lights_high = 0
    }

    if (msg.lights_medium !== undefined) {
      resolved.lights_medium = msg.lights_medium;
    }
    else {
      resolved.lights_medium = 0
    }

    if (msg.lights_left !== undefined) {
      resolved.lights_left = msg.lights_left;
    }
    else {
      resolved.lights_left = 0
    }

    if (msg.lights_right !== undefined) {
      resolved.lights_right = msg.lights_right;
    }
    else {
      resolved.lights_right = 0
    }

    if (msg.lights_danger !== undefined) {
      resolved.lights_danger = msg.lights_danger;
    }
    else {
      resolved.lights_danger = 0
    }

    if (msg.ignition !== undefined) {
      resolved.ignition = msg.ignition;
    }
    else {
      resolved.ignition = 0
    }

    if (msg.horn !== undefined) {
      resolved.horn = msg.horn;
    }
    else {
      resolved.horn = 0
    }

    if (msg.throttle_pressure !== undefined) {
      resolved.throttle_pressure = msg.throttle_pressure;
    }
    else {
      resolved.throttle_pressure = 0
    }

    if (msg.brake_pressure !== undefined) {
      resolved.brake_pressure = msg.brake_pressure;
    }
    else {
      resolved.brake_pressure = 0
    }

    if (msg.clutch_pressure !== undefined) {
      resolved.clutch_pressure = msg.clutch_pressure;
    }
    else {
      resolved.clutch_pressure = 0
    }

    return resolved;
    }
};

module.exports = HumanDriverMonitorStatus;
