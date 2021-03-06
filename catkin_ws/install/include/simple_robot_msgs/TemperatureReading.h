// Generated by gencpp from file simple_robot_msgs/TemperatureReading.msg
// DO NOT EDIT!


#ifndef SIMPLE_ROBOT_MSGS_MESSAGE_TEMPERATUREREADING_H
#define SIMPLE_ROBOT_MSGS_MESSAGE_TEMPERATUREREADING_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace simple_robot_msgs
{
template <class ContainerAllocator>
struct TemperatureReading_
{
  typedef TemperatureReading_<ContainerAllocator> Type;

  TemperatureReading_()
    : temp(0)  {
    }
  TemperatureReading_(const ContainerAllocator& _alloc)
    : temp(0)  {
  (void)_alloc;
    }



   typedef int64_t _temp_type;
  _temp_type temp;




  typedef boost::shared_ptr< ::simple_robot_msgs::TemperatureReading_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::simple_robot_msgs::TemperatureReading_<ContainerAllocator> const> ConstPtr;

}; // struct TemperatureReading_

typedef ::simple_robot_msgs::TemperatureReading_<std::allocator<void> > TemperatureReading;

typedef boost::shared_ptr< ::simple_robot_msgs::TemperatureReading > TemperatureReadingPtr;
typedef boost::shared_ptr< ::simple_robot_msgs::TemperatureReading const> TemperatureReadingConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::simple_robot_msgs::TemperatureReading_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::simple_robot_msgs::TemperatureReading_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace simple_robot_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'simple_robot_msgs': ['/home/christos/catkin_ws/src/simple_robot_msgs/msg', '/home/christos/catkin_ws/devel/share/simple_robot_msgs/msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::simple_robot_msgs::TemperatureReading_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simple_robot_msgs::TemperatureReading_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simple_robot_msgs::TemperatureReading_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simple_robot_msgs::TemperatureReading_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simple_robot_msgs::TemperatureReading_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simple_robot_msgs::TemperatureReading_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::simple_robot_msgs::TemperatureReading_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5835df3073cf527834fa08f502b2957f";
  }

  static const char* value(const ::simple_robot_msgs::TemperatureReading_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5835df3073cf5278ULL;
  static const uint64_t static_value2 = 0x34fa08f502b2957fULL;
};

template<class ContainerAllocator>
struct DataType< ::simple_robot_msgs::TemperatureReading_<ContainerAllocator> >
{
  static const char* value()
  {
    return "simple_robot_msgs/TemperatureReading";
  }

  static const char* value(const ::simple_robot_msgs::TemperatureReading_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::simple_robot_msgs::TemperatureReading_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 temp\n\
";
  }

  static const char* value(const ::simple_robot_msgs::TemperatureReading_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::simple_robot_msgs::TemperatureReading_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.temp);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TemperatureReading_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::simple_robot_msgs::TemperatureReading_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::simple_robot_msgs::TemperatureReading_<ContainerAllocator>& v)
  {
    s << indent << "temp: ";
    Printer<int64_t>::stream(s, indent + "  ", v.temp);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIMPLE_ROBOT_MSGS_MESSAGE_TEMPERATUREREADING_H
