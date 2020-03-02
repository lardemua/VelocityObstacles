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

class ManagerStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.gear = null;
      this.gearbox_status = null;
      this.clutch = null;
      this.brake = null;
      this.steering_wheel = null;
      this.rpm = null;
      this.lights_brake = null;
      this.lights_reverse = null;
      this.lights_warning = null;
      this.emergency = null;
      this.auto_ignition = null;
      this.auto_brake = null;
      this.auto_direction = null;
      this.auto_clutch = null;
      this.throttle = null;
      this.throttle_pedal = null;
      this.auto_throttle = null;
      this.velocity = null;
      this.count = null;
      this.pulses_sec = null;
      this.revolutions_sec = null;
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
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = 0;
      }
      if (initObj.hasOwnProperty('gearbox_status')) {
        this.gearbox_status = initObj.gearbox_status
      }
      else {
        this.gearbox_status = '';
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
      if (initObj.hasOwnProperty('throttle')) {
        this.throttle = initObj.throttle
      }
      else {
        this.throttle = 0.0;
      }
      if (initObj.hasOwnProperty('throttle_pedal')) {
        this.throttle_pedal = initObj.throttle_pedal
      }
      else {
        this.throttle_pedal = 0.0;
      }
      if (initObj.hasOwnProperty('auto_throttle')) {
        this.auto_throttle = initObj.auto_throttle
      }
      else {
        this.auto_throttle = 0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
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
    // Serializes a message object of type ManagerStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = _serializer.uint32(obj.gear, buffer, bufferOffset);
    // Serialize message field [gearbox_status]
    bufferOffset = _serializer.string(obj.gearbox_status, buffer, bufferOffset);
    // Serialize message field [clutch]
    bufferOffset = _serializer.float64(obj.clutch, buffer, bufferOffset);
    // Serialize message field [brake]
    bufferOffset = _serializer.float64(obj.brake, buffer, bufferOffset);
    // Serialize message field [steering_wheel]
    bufferOffset = _serializer.float64(obj.steering_wheel, buffer, bufferOffset);
    // Serialize message field [rpm]
    bufferOffset = _serializer.float64(obj.rpm, buffer, bufferOffset);
    // Serialize message field [lights_brake]
    bufferOffset = _serializer.uint32(obj.lights_brake, buffer, bufferOffset);
    // Serialize message field [lights_reverse]
    bufferOffset = _serializer.uint32(obj.lights_reverse, buffer, bufferOffset);
    // Serialize message field [lights_warning]
    bufferOffset = _serializer.uint32(obj.lights_warning, buffer, bufferOffset);
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
    // Serialize message field [throttle]
    bufferOffset = _serializer.float64(obj.throttle, buffer, bufferOffset);
    // Serialize message field [throttle_pedal]
    bufferOffset = _serializer.float64(obj.throttle_pedal, buffer, bufferOffset);
    // Serialize message field [auto_throttle]
    bufferOffset = _serializer.uint32(obj.auto_throttle, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float64(obj.velocity, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.float64(obj.count, buffer, bufferOffset);
    // Serialize message field [pulses_sec]
    bufferOffset = _serializer.float64(obj.pulses_sec, buffer, bufferOffset);
    // Serialize message field [revolutions_sec]
    bufferOffset = _serializer.float64(obj.revolutions_sec, buffer, bufferOffset);
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
    //deserializes a message object of type ManagerStatus
    let len;
    let data = new ManagerStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [gearbox_status]
    data.gearbox_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [clutch]
    data.clutch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brake]
    data.brake = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steering_wheel]
    data.steering_wheel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm]
    data.rpm = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lights_brake]
    data.lights_brake = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lights_reverse]
    data.lights_reverse = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lights_warning]
    data.lights_warning = _deserializer.uint32(buffer, bufferOffset);
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
    // Deserialize message field [throttle]
    data.throttle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [throttle_pedal]
    data.throttle_pedal = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [auto_throttle]
    data.auto_throttle = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pulses_sec]
    data.pulses_sec = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [revolutions_sec]
    data.revolutions_sec = _deserializer.float64(buffer, bufferOffset);
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
    length += object.gearbox_status.length;
    return length + 164;
  }

  static datatype() {
    // Returns string type for a message object
    return 'atlascar_base/ManagerStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f7f354f13aa1404ddc73a37a6469fed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    #from gearbox
    uint32 gear				    #done
    string gearbox_status	    #pending
    
    #from plc
    float64 clutch			    #done
    float64 brake			    #done
    float64 steering_wheel  	#done
    float64 rpm				    #done
    
    uint32 lights_brake		    #pending
    uint32 lights_reverse	    #pending
    uint32 lights_warning	    #pending
    
    uint32 emergency		    #done
    
    uint32 auto_ignition	    #done
    uint32 auto_brake		    #done
    uint32 auto_direction	    #done
    uint32 auto_clutch		    #done
    
    #from throttle
    float64 throttle		    #pending
    float64 throttle_pedal	    #done
    uint32 auto_throttle	    #done
    
    #from odometry
    float64 velocity		    #done
    float64 count              #done
    float64 pulses_sec         #done
    float64 revolutions_sec    #done
    
    
    #from driver
    uint32 lights_high		    #done
    uint32 lights_medium	    #done
    uint32 lights_left		    #done
    uint32 lights_right		    #done
    uint32 lights_danger	    #done
    
    uint32 ignition			    #done
    
    uint32 horn				    #pending
    
    uint32 throttle_pressure	#done
    uint32 brake_pressure		#done
    uint32 clutch_pressure		#done
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
    const resolved = new ManagerStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.gear !== undefined) {
      resolved.gear = msg.gear;
    }
    else {
      resolved.gear = 0
    }

    if (msg.gearbox_status !== undefined) {
      resolved.gearbox_status = msg.gearbox_status;
    }
    else {
      resolved.gearbox_status = ''
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

    if (msg.throttle !== undefined) {
      resolved.throttle = msg.throttle;
    }
    else {
      resolved.throttle = 0.0
    }

    if (msg.throttle_pedal !== undefined) {
      resolved.throttle_pedal = msg.throttle_pedal;
    }
    else {
      resolved.throttle_pedal = 0.0
    }

    if (msg.auto_throttle !== undefined) {
      resolved.auto_throttle = msg.auto_throttle;
    }
    else {
      resolved.auto_throttle = 0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
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

module.exports = ManagerStatus;
