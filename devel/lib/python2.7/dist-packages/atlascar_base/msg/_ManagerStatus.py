# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from atlascar_base/ManagerStatus.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class ManagerStatus(genpy.Message):
  _md5sum = "5f7f354f13aa1404ddc73a37a6469fed"
  _type = "atlascar_base/ManagerStatus"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header

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
"""
  __slots__ = ['header','gear','gearbox_status','clutch','brake','steering_wheel','rpm','lights_brake','lights_reverse','lights_warning','emergency','auto_ignition','auto_brake','auto_direction','auto_clutch','throttle','throttle_pedal','auto_throttle','velocity','count','pulses_sec','revolutions_sec','lights_high','lights_medium','lights_left','lights_right','lights_danger','ignition','horn','throttle_pressure','brake_pressure','clutch_pressure']
  _slot_types = ['std_msgs/Header','uint32','string','float64','float64','float64','float64','uint32','uint32','uint32','uint32','uint32','uint32','uint32','uint32','float64','float64','uint32','float64','float64','float64','float64','uint32','uint32','uint32','uint32','uint32','uint32','uint32','uint32','uint32','uint32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,gear,gearbox_status,clutch,brake,steering_wheel,rpm,lights_brake,lights_reverse,lights_warning,emergency,auto_ignition,auto_brake,auto_direction,auto_clutch,throttle,throttle_pedal,auto_throttle,velocity,count,pulses_sec,revolutions_sec,lights_high,lights_medium,lights_left,lights_right,lights_danger,ignition,horn,throttle_pressure,brake_pressure,clutch_pressure

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ManagerStatus, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.gear is None:
        self.gear = 0
      if self.gearbox_status is None:
        self.gearbox_status = ''
      if self.clutch is None:
        self.clutch = 0.
      if self.brake is None:
        self.brake = 0.
      if self.steering_wheel is None:
        self.steering_wheel = 0.
      if self.rpm is None:
        self.rpm = 0.
      if self.lights_brake is None:
        self.lights_brake = 0
      if self.lights_reverse is None:
        self.lights_reverse = 0
      if self.lights_warning is None:
        self.lights_warning = 0
      if self.emergency is None:
        self.emergency = 0
      if self.auto_ignition is None:
        self.auto_ignition = 0
      if self.auto_brake is None:
        self.auto_brake = 0
      if self.auto_direction is None:
        self.auto_direction = 0
      if self.auto_clutch is None:
        self.auto_clutch = 0
      if self.throttle is None:
        self.throttle = 0.
      if self.throttle_pedal is None:
        self.throttle_pedal = 0.
      if self.auto_throttle is None:
        self.auto_throttle = 0
      if self.velocity is None:
        self.velocity = 0.
      if self.count is None:
        self.count = 0.
      if self.pulses_sec is None:
        self.pulses_sec = 0.
      if self.revolutions_sec is None:
        self.revolutions_sec = 0.
      if self.lights_high is None:
        self.lights_high = 0
      if self.lights_medium is None:
        self.lights_medium = 0
      if self.lights_left is None:
        self.lights_left = 0
      if self.lights_right is None:
        self.lights_right = 0
      if self.lights_danger is None:
        self.lights_danger = 0
      if self.ignition is None:
        self.ignition = 0
      if self.horn is None:
        self.horn = 0
      if self.throttle_pressure is None:
        self.throttle_pressure = 0
      if self.brake_pressure is None:
        self.brake_pressure = 0
      if self.clutch_pressure is None:
        self.clutch_pressure = 0
    else:
      self.header = std_msgs.msg.Header()
      self.gear = 0
      self.gearbox_status = ''
      self.clutch = 0.
      self.brake = 0.
      self.steering_wheel = 0.
      self.rpm = 0.
      self.lights_brake = 0
      self.lights_reverse = 0
      self.lights_warning = 0
      self.emergency = 0
      self.auto_ignition = 0
      self.auto_brake = 0
      self.auto_direction = 0
      self.auto_clutch = 0
      self.throttle = 0.
      self.throttle_pedal = 0.
      self.auto_throttle = 0
      self.velocity = 0.
      self.count = 0.
      self.pulses_sec = 0.
      self.revolutions_sec = 0.
      self.lights_high = 0
      self.lights_medium = 0
      self.lights_left = 0
      self.lights_right = 0
      self.lights_danger = 0
      self.ignition = 0
      self.horn = 0
      self.throttle_pressure = 0
      self.brake_pressure = 0
      self.clutch_pressure = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_I().pack(self.gear))
      _x = self.gearbox_status
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_4d8I2dI4d10I().pack(_x.clutch, _x.brake, _x.steering_wheel, _x.rpm, _x.lights_brake, _x.lights_reverse, _x.lights_warning, _x.emergency, _x.auto_ignition, _x.auto_brake, _x.auto_direction, _x.auto_clutch, _x.throttle, _x.throttle_pedal, _x.auto_throttle, _x.velocity, _x.count, _x.pulses_sec, _x.revolutions_sec, _x.lights_high, _x.lights_medium, _x.lights_left, _x.lights_right, _x.lights_danger, _x.ignition, _x.horn, _x.throttle_pressure, _x.brake_pressure, _x.clutch_pressure))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (self.gear,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.gearbox_status = str[start:end].decode('utf-8')
      else:
        self.gearbox_status = str[start:end]
      _x = self
      start = end
      end += 156
      (_x.clutch, _x.brake, _x.steering_wheel, _x.rpm, _x.lights_brake, _x.lights_reverse, _x.lights_warning, _x.emergency, _x.auto_ignition, _x.auto_brake, _x.auto_direction, _x.auto_clutch, _x.throttle, _x.throttle_pedal, _x.auto_throttle, _x.velocity, _x.count, _x.pulses_sec, _x.revolutions_sec, _x.lights_high, _x.lights_medium, _x.lights_left, _x.lights_right, _x.lights_danger, _x.ignition, _x.horn, _x.throttle_pressure, _x.brake_pressure, _x.clutch_pressure,) = _get_struct_4d8I2dI4d10I().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_I().pack(self.gear))
      _x = self.gearbox_status
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_4d8I2dI4d10I().pack(_x.clutch, _x.brake, _x.steering_wheel, _x.rpm, _x.lights_brake, _x.lights_reverse, _x.lights_warning, _x.emergency, _x.auto_ignition, _x.auto_brake, _x.auto_direction, _x.auto_clutch, _x.throttle, _x.throttle_pedal, _x.auto_throttle, _x.velocity, _x.count, _x.pulses_sec, _x.revolutions_sec, _x.lights_high, _x.lights_medium, _x.lights_left, _x.lights_right, _x.lights_danger, _x.ignition, _x.horn, _x.throttle_pressure, _x.brake_pressure, _x.clutch_pressure))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (self.gear,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.gearbox_status = str[start:end].decode('utf-8')
      else:
        self.gearbox_status = str[start:end]
      _x = self
      start = end
      end += 156
      (_x.clutch, _x.brake, _x.steering_wheel, _x.rpm, _x.lights_brake, _x.lights_reverse, _x.lights_warning, _x.emergency, _x.auto_ignition, _x.auto_brake, _x.auto_direction, _x.auto_clutch, _x.throttle, _x.throttle_pedal, _x.auto_throttle, _x.velocity, _x.count, _x.pulses_sec, _x.revolutions_sec, _x.lights_high, _x.lights_medium, _x.lights_left, _x.lights_right, _x.lights_danger, _x.ignition, _x.horn, _x.throttle_pressure, _x.brake_pressure, _x.clutch_pressure,) = _get_struct_4d8I2dI4d10I().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4d8I2dI4d10I = None
def _get_struct_4d8I2dI4d10I():
    global _struct_4d8I2dI4d10I
    if _struct_4d8I2dI4d10I is None:
        _struct_4d8I2dI4d10I = struct.Struct("<4d8I2dI4d10I")
    return _struct_4d8I2dI4d10I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
