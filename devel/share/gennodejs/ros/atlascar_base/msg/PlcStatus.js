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

class PlcStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.clutch = null;
      this.brake = null;
      this.steering_wheel = null;
      this.rpm = null;
      this.lights_high = null;
      this.lights_medium = null;
      this.lights_minimum = null;
      this.lights_left = null;
      this.lights_right = null;
      this.lights_brake = null;
      this.lights_reverse = null;
      this.lights_warning = null;
      this.ignition = null;
      this.emergency = null;
      this.auto_ignition = null;
      this.auto_brake = null;
      this.auto_direction = null;
      this.auto_clutch = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('clutch')) {
        this.clutch = initObj.clutch
      }
      else {
        this.clutch = 0.0;
      }
      if (initObj.hasOwnProperty('brake')) {
        this.brake = initObj.brake
      }
      else {
        this.brake = 0.0;
      }
      if (initObj.hasOwnProperty('steering_wheel')) {
        this.steering_wheel = initObj.steering_wheel
      }
      else {
        this.steering_wheel = 0.0;
      }
      if (initObj.hasOwnProperty('rpm')) {
        this.rpm = initObj.rpm
      }
      else {
        this.rpm = 0.0;
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
      if (initObj.hasOwnProperty('lights_minimum')) {
        this.lights_minimum = initObj.lights_minimum
      }
      else {
        this.lights_minimum = 0;
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
      if (initObj.hasOwnProperty('lights_brake')) {
        this.lights_brake = initObj.lights_brake
      }
      else {
        this.lights_brake = 0;
      }
      if (initObj.hasOwnProperty('lights_reverse')) {
        this.lights_reverse = initObj.lights_reverse
      }
      else {
        this.lights_reverse = 0;
      }
      if (initObj.hasOwnProperty('lights_warning')) {
        this.lights_warning = initObj.lights_warning
      }
      else {
        this.lights_warning = 0;
      }
      if (initObj.hasOwnProperty('ignition')) {
        this.ignition = initObj.ignition
      }
      else {
        this.ignition = 0;
      }
      if (initObj.hasOwnProperty('emergency')) {
        this.emergency = initObj.emergency
      }
      else {
        this.emergency = 0;
      }
      if (initObj.hasOwnProperty('auto_ignition')) {
        this.auto_ignition = initObj.auto_ignition
      }
      else {
        this.auto_ignition = 0;
      }
      if (initObj.hasOwnProperty('auto_brake')) {
        this.auto_brake = initObj.auto_brake
      }
      else {
        this.auto_brake = 0;
      }
      if (initObj.hasOwnProperty('auto_direction')) {
        this.auto_direction = initObj.auto_direction
      }
      else {
        this.auto_direction = 0;
      }
      if (initObj.hasOwnProperty('auto_clutch')) {
        this.auto_clutch = initObj.auto_clutch
      }
      else {
        this.auto_clutch = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlcStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [clutch]
    bufferOffset = _serializer.float64(obj.clutch, buffer, bufferOffset);
    // Serialize message field [brake]
    bufferOffset = _serializer.float64(obj.brake, buffer, bufferOffset);
    // Serialize message field [steering_wheel]
    bufferOffset = _serializer.float64(obj.steering_wheel, buffer, bufferOffset);
    // Serialize message field [rpm]
    bufferOffset = _serializer.float64(obj.rpm, buffer, bufferOffset);
    // Serialize message field [lights_high]
    bufferOffset = _serializer.uint32(obj.lights_high, buffer, bufferOffset);
    // Serialize message field [lights_medium]
    bufferOffset = _serializer.uint32(obj.lights_medium, buffer, bufferOffset);
    // Serialize message field [lights_minimum]
    bufferOffset = _serializer.uint32(obj.lights_minimum, buffer, bufferOffset);
    // Serialize message field [lights_left]
    bufferOffset = _serializer.uint32(obj.lights_left, buffer, bufferOffset);
    // Serialize message field [lights_right]
    bufferOffset = _serializer.uint32(obj.lights_right, buffer, bufferOffset);
    // Serialize message field [lights_brake]
    bufferOffset = _serializer.uint32(obj.lights_brake, buffer, bufferOffset);
    // Serialize message field [lights_reverse]
    bufferOffset = _serializer.uint32(obj.lights_reverse, buffer, bufferOffset);
    // Serialize message field [lights_warning]
    bufferOffset = _serializer.uint32(obj.lights_warning, buffer, bufferOffset);
    // Serialize message field [ignition]
    bufferOffset = _serializer.uint32(obj.ignition, buffer, bufferOffset);
    // Serialize message field [emergency]
    bufferOffset = _serializer.uint32(obj.emergency, buffer, bufferOffset);
    // Serialize message field [auto_ignition]
    bufferOffset = _serializer.uint32(obj.auto_ignition, buffer, bufferOffset);
    // Serialize message field [auto_brake]
    bufferOffset = _serializer.uint32(obj.auto_brake, buffer, bufferOffset);
    // Serialize message field [auto_direction]
    bufferOffset = _serializer.uint32(obj.auto_direction, buffer, bufferOffset);
    // Serialize message field [auto_clutch]
    bufferOffset = _serializer.uint32(obj.auto_clutch, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlcStatus
    let len;
    let data = new PlcStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [clutch]
    data.clutch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brake]
    data.brake = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steering_wheel]
    data.steering_wheel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm]
    data.rpm = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lights_high]
    data.lights_high = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lights_medium]
    data.lights_medium = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lights_minimum]
    data.lights_minimum = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lights_left]
    data.lights_left = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lights_right]
    data.lights_right = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lights_brake]
    data.lights_brake = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lights_reverse]
    data.lights_reverse = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lights_warning]
    data.lights_warning = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ignition]
    data.ignition = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [emergency]
    data.emergency = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [auto_ignition]
    data.auto_ignition = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [auto_brake]
    data.auto_brake = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [auto_direction]
    data.auto_direction = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [auto_clutch]
    data.auto_clutch = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 88;
  }

  static datatype() {
    // Returns string type for a message object
    return 'atlascar_base/PlcStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c4c4c5a2dc867799ac0d19053d0d419';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 clutch
    float64 brake
    float64 steering_wheel
    float64 rpm
    
    uint32 lights_high
    uint32 lights_medium
    uint32 lights_minimum
    uint32 lights_left
    uint32 lights_right
    uint32 lights_brake
    uint32 lights_reverse
    uint32 lights_warning
    
    uint32 ignition
    uint32 emergency
    
    uint32 auto_ignition
    uint32 auto_brake
    uint32 auto_direction
    uint32 auto_clutch
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
    const resolved = new PlcStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.clutch !== undefined) {
      resolved.clutch = msg.clutch;
    }
    else {
      resolved.clutch = 0.0
    }

    if (msg.brake !== undefined) {
      resolved.brake = msg.brake;
    }
    else {
      resolved.brake = 0.0
    }

    if (msg.steering_wheel !== undefined) {
      resolved.steering_wheel = msg.steering_wheel;
    }
    else {
      resolved.steering_wheel = 0.0
    }

    if (msg.rpm !== undefined) {
      resolved.rpm = msg.rpm;
    }
    else {
      resolved.rpm = 0.0
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

    if (msg.lights_minimum !== undefined) {
      resolved.lights_minimum = msg.lights_minimum;
    }
    else {
      resolved.lights_minimum = 0
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

    if (msg.lights_brake !== undefined) {
      resolved.lights_brake = msg.lights_brake;
    }
    else {
      resolved.lights_brake = 0
    }

    if (msg.lights_reverse !== undefined) {
      resolved.lights_reverse = msg.lights_reverse;
    }
    else {
      resolved.lights_reverse = 0
    }

    if (msg.lights_warning !== undefined) {
      resolved.lights_warning = msg.lights_warning;
    }
    else {
      resolved.lights_warning = 0
    }

    if (msg.ignition !== undefined) {
      resolved.ignition = msg.ignition;
    }
    else {
      resolved.ignition = 0
    }

    if (msg.emergency !== undefined) {
      resolved.emergency = msg.emergency;
    }
    else {
      resolved.emergency = 0
    }

    if (msg.auto_ignition !== undefined) {
      resolved.auto_ignition = msg.auto_ignition;
    }
    else {
      resolved.auto_ignition = 0
    }

    if (msg.auto_brake !== undefined) {
      resolved.auto_brake = msg.auto_brake;
    }
    else {
      resolved.auto_brake = 0
    }

    if (msg.auto_direction !== undefined) {
      resolved.auto_direction = msg.auto_direction;
    }
    else {
      resolved.auto_direction = 0
    }

    if (msg.auto_clutch !== undefined) {
      resolved.auto_clutch = msg.auto_clutch;
    }
    else {
      resolved.auto_clutch = 0
    }

    return resolved;
    }
};

module.exports = PlcStatus;
