// Generated by gencpp from file mtt/TargetList.msg
// DO NOT EDIT!


#ifndef MTT_MESSAGE_TARGETLIST_H
#define MTT_MESSAGE_TARGETLIST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <mtt/Target.h>

namespace mtt
{
template <class ContainerAllocator>
struct TargetList_
{
  typedef TargetList_<ContainerAllocator> Type;

  TargetList_()
    : Targets()  {
    }
  TargetList_(const ContainerAllocator& _alloc)
    : Targets(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::mtt::Target_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::mtt::Target_<ContainerAllocator> >::other >  _Targets_type;
  _Targets_type Targets;





  typedef boost::shared_ptr< ::mtt::TargetList_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mtt::TargetList_<ContainerAllocator> const> ConstPtr;

}; // struct TargetList_

typedef ::mtt::TargetList_<std::allocator<void> > TargetList;

typedef boost::shared_ptr< ::mtt::TargetList > TargetListPtr;
typedef boost::shared_ptr< ::mtt::TargetList const> TargetListConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mtt::TargetList_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mtt::TargetList_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mtt

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'mtt': ['/home/ruic7/MTT/src/mtt/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mtt::TargetList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mtt::TargetList_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mtt::TargetList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mtt::TargetList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mtt::TargetList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mtt::TargetList_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mtt::TargetList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "47f4cb934cefc440ec66e810f593a9ae";
  }

  static const char* value(const ::mtt::TargetList_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x47f4cb934cefc440ULL;
  static const uint64_t static_value2 = 0xec66e810f593a9aeULL;
};

template<class ContainerAllocator>
struct DataType< ::mtt::TargetList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mtt/TargetList";
  }

  static const char* value(const ::mtt::TargetList_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mtt::TargetList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#the header of the message\n"
"Target[] Targets\n"
"\n"
"================================================================================\n"
"MSG: mtt/Target\n"
"#the header of the message\n"
"Header header\n"
"uint32 id\n"
"geometry_msgs/Pose pose\n"
"geometry_msgs/Point initialpose\n"
"geometry_msgs/Point finalpose\n"
"geometry_msgs/Twist velocity\n"
"float64 size\n"
"\n"
"#sensor_msgs/PointCloud2 position\n"
"#sensor_msgs/PointCloud2 velocity\n"
"#sensor_msgs/PointCloud2[] obstacle_lines\n"
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
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::mtt::TargetList_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mtt::TargetList_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Targets);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TargetList_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mtt::TargetList_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mtt::TargetList_<ContainerAllocator>& v)
  {
    s << indent << "Targets[]" << std::endl;
    for (size_t i = 0; i < v.Targets.size(); ++i)
    {
      s << indent << "  Targets[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::mtt::Target_<ContainerAllocator> >::stream(s, indent + "    ", v.Targets[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MTT_MESSAGE_TARGETLIST_H
