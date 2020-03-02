// Generated by gencpp from file human_driver_monitor/HumanDriverMonitorStatus.msg
// DO NOT EDIT!


#ifndef HUMAN_DRIVER_MONITOR_MESSAGE_HUMANDRIVERMONITORSTATUS_H
#define HUMAN_DRIVER_MONITOR_MESSAGE_HUMANDRIVERMONITORSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace human_driver_monitor
{
template <class ContainerAllocator>
struct HumanDriverMonitorStatus_
{
  typedef HumanDriverMonitorStatus_<ContainerAllocator> Type;

  HumanDriverMonitorStatus_()
    : header()
    , lights_high(0)
    , lights_medium(0)
    , lights_left(0)
    , lights_right(0)
    , lights_danger(0)
    , ignition(0)
    , horn(0)
    , throttle_pressure(0)
    , brake_pressure(0)
    , clutch_pressure(0)  {
    }
  HumanDriverMonitorStatus_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , lights_high(0)
    , lights_medium(0)
    , lights_left(0)
    , lights_right(0)
    , lights_danger(0)
    , ignition(0)
    , horn(0)
    , throttle_pressure(0)
    , brake_pressure(0)
    , clutch_pressure(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _lights_high_type;
  _lights_high_type lights_high;

   typedef uint32_t _lights_medium_type;
  _lights_medium_type lights_medium;

   typedef uint32_t _lights_left_type;
  _lights_left_type lights_left;

   typedef uint32_t _lights_right_type;
  _lights_right_type lights_right;

   typedef uint32_t _lights_danger_type;
  _lights_danger_type lights_danger;

   typedef uint32_t _ignition_type;
  _ignition_type ignition;

   typedef uint32_t _horn_type;
  _horn_type horn;

   typedef uint32_t _throttle_pressure_type;
  _throttle_pressure_type throttle_pressure;

   typedef uint32_t _brake_pressure_type;
  _brake_pressure_type brake_pressure;

   typedef uint32_t _clutch_pressure_type;
  _clutch_pressure_type clutch_pressure;





  typedef boost::shared_ptr< ::human_driver_monitor::HumanDriverMonitorStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::human_driver_monitor::HumanDriverMonitorStatus_<ContainerAllocator> const> ConstPtr;

}; // struct HumanDriverMonitorStatus_

typedef ::human_driver_monitor::HumanDriverMonitorStatus_<std::allocator<void> > HumanDriverMonitorStatus;

typedef boost::shared_ptr< ::human_driver_monitor::HumanDriverMonitorStatus > HumanDriverMonitorStatusPtr;
typedef boost::shared_ptr< ::human_driver_monitor::HumanDriverMonitorStatus const> HumanDriverMonitorStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::human_driver_monitor::HumanDriverMonitorStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::human_driver_monitor::HumanDriverMonitorStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace human_driver_monitor

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'human_driver_monitor': ['/home/ruic7/MTT/src/human_driver_monitor/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::human_driver_monitor::HumanDriverMonitorStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::human_driver_monitor::HumanDriverMonitorStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::human_driver_monitor::HumanDriverMonitorStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::human_driver_monitor::HumanDriverMonitorStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::human_driver_monitor::HumanDriverMonitorStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::human_driver_monitor::HumanDriverMonitorStatus_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::human_driver_monitor::HumanDriverMonitorStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e0f0d2c30fd975b578f76d6ff646b0d4";
  }

  static const char* value(const ::human_driver_monitor::HumanDriverMonitorStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe0f0d2c30fd975b5ULL;
  static const uint64_t static_value2 = 0x78f76d6ff646b0d4ULL;
};

template<class ContainerAllocator>
struct DataType< ::human_driver_monitor::HumanDriverMonitorStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "human_driver_monitor/HumanDriverMonitorStatus";
  }

  static const char* value(const ::human_driver_monitor::HumanDriverMonitorStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::human_driver_monitor::HumanDriverMonitorStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"uint32 lights_high\n"
"uint32 lights_medium\n"
"uint32 lights_left\n"
"uint32 lights_right\n"
"uint32 lights_danger\n"
"\n"
"uint32 ignition\n"
"\n"
"uint32 horn\n"
"\n"
"uint32 throttle_pressure\n"
"uint32 brake_pressure\n"
"uint32 clutch_pressure\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::human_driver_monitor::HumanDriverMonitorStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::human_driver_monitor::HumanDriverMonitorStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.lights_high);
      stream.next(m.lights_medium);
      stream.next(m.lights_left);
      stream.next(m.lights_right);
      stream.next(m.lights_danger);
      stream.next(m.ignition);
      stream.next(m.horn);
      stream.next(m.throttle_pressure);
      stream.next(m.brake_pressure);
      stream.next(m.clutch_pressure);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HumanDriverMonitorStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::human_driver_monitor::HumanDriverMonitorStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::human_driver_monitor::HumanDriverMonitorStatus_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "lights_high: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.lights_high);
    s << indent << "lights_medium: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.lights_medium);
    s << indent << "lights_left: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.lights_left);
    s << indent << "lights_right: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.lights_right);
    s << indent << "lights_danger: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.lights_danger);
    s << indent << "ignition: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.ignition);
    s << indent << "horn: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.horn);
    s << indent << "throttle_pressure: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.throttle_pressure);
    s << indent << "brake_pressure: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.brake_pressure);
    s << indent << "clutch_pressure: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.clutch_pressure);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HUMAN_DRIVER_MONITOR_MESSAGE_HUMANDRIVERMONITORSTATUS_H
