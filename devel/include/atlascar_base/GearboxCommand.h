// Generated by gencpp from file atlascar_base/GearboxCommand.msg
// DO NOT EDIT!


#ifndef ATLASCAR_BASE_MESSAGE_GEARBOXCOMMAND_H
#define ATLASCAR_BASE_MESSAGE_GEARBOXCOMMAND_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace atlascar_base
{
template <class ContainerAllocator>
struct GearboxCommand_
{
  typedef GearboxCommand_<ContainerAllocator> Type;

  GearboxCommand_()
    : header()
    , gear(0)
    , priority(0.0)
    , lifetime(0.0)  {
    }
  GearboxCommand_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , gear(0)
    , priority(0.0)
    , lifetime(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _gear_type;
  _gear_type gear;

   typedef double _priority_type;
  _priority_type priority;

   typedef double _lifetime_type;
  _lifetime_type lifetime;





  typedef boost::shared_ptr< ::atlascar_base::GearboxCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::atlascar_base::GearboxCommand_<ContainerAllocator> const> ConstPtr;

}; // struct GearboxCommand_

typedef ::atlascar_base::GearboxCommand_<std::allocator<void> > GearboxCommand;

typedef boost::shared_ptr< ::atlascar_base::GearboxCommand > GearboxCommandPtr;
typedef boost::shared_ptr< ::atlascar_base::GearboxCommand const> GearboxCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::atlascar_base::GearboxCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::atlascar_base::GearboxCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace atlascar_base

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'atlascar_base': ['/home/ruic7/mymtt/src/atlascar_base/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::atlascar_base::GearboxCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::atlascar_base::GearboxCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::atlascar_base::GearboxCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::atlascar_base::GearboxCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::atlascar_base::GearboxCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::atlascar_base::GearboxCommand_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::atlascar_base::GearboxCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cbb552e92ed51b0132f43a0b494df5e6";
  }

  static const char* value(const ::atlascar_base::GearboxCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcbb552e92ed51b01ULL;
  static const uint64_t static_value2 = 0x32f43a0b494df5e6ULL;
};

template<class ContainerAllocator>
struct DataType< ::atlascar_base::GearboxCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "atlascar_base/GearboxCommand";
  }

  static const char* value(const ::atlascar_base::GearboxCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::atlascar_base::GearboxCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"uint32 gear\n"
"\n"
"float64 priority\n"
"float64 lifetime\n"
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

  static const char* value(const ::atlascar_base::GearboxCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::atlascar_base::GearboxCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.gear);
      stream.next(m.priority);
      stream.next(m.lifetime);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GearboxCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::atlascar_base::GearboxCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::atlascar_base::GearboxCommand_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "gear: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.gear);
    s << indent << "priority: ";
    Printer<double>::stream(s, indent + "  ", v.priority);
    s << indent << "lifetime: ";
    Printer<double>::stream(s, indent + "  ", v.lifetime);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ATLASCAR_BASE_MESSAGE_GEARBOXCOMMAND_H
