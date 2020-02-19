// Generated by gencpp from file simple_robot_msgs/GetRobotPoseResult.msg
// DO NOT EDIT!


#ifndef SIMPLE_ROBOT_MSGS_MESSAGE_GETROBOTPOSERESULT_H
#define SIMPLE_ROBOT_MSGS_MESSAGE_GETROBOTPOSERESULT_H


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
struct GetRobotPoseResult_
{
  typedef GetRobotPoseResult_<ContainerAllocator> Type;

  GetRobotPoseResult_()
    : x(0)
    , y(0)  {
    }
  GetRobotPoseResult_(const ContainerAllocator& _alloc)
    : x(0)
    , y(0)  {
  (void)_alloc;
    }



   typedef int64_t _x_type;
  _x_type x;

   typedef int64_t _y_type;
  _y_type y;




  typedef boost::shared_ptr< ::simple_robot_msgs::GetRobotPoseResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::simple_robot_msgs::GetRobotPoseResult_<ContainerAllocator> const> ConstPtr;

}; // struct GetRobotPoseResult_

typedef ::simple_robot_msgs::GetRobotPoseResult_<std::allocator<void> > GetRobotPoseResult;

typedef boost::shared_ptr< ::simple_robot_msgs::GetRobotPoseResult > GetRobotPoseResultPtr;
typedef boost::shared_ptr< ::simple_robot_msgs::GetRobotPoseResult const> GetRobotPoseResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::simple_robot_msgs::GetRobotPoseResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::simple_robot_msgs::GetRobotPoseResult_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::simple_robot_msgs::GetRobotPoseResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simple_robot_msgs::GetRobotPoseResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simple_robot_msgs::GetRobotPoseResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simple_robot_msgs::GetRobotPoseResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simple_robot_msgs::GetRobotPoseResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simple_robot_msgs::GetRobotPoseResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::simple_robot_msgs::GetRobotPoseResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3b834ede922a0fff22c43585c533b49f";
  }

  static const char* value(const ::simple_robot_msgs::GetRobotPoseResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3b834ede922a0fffULL;
  static const uint64_t static_value2 = 0x22c43585c533b49fULL;
};

template<class ContainerAllocator>
struct DataType< ::simple_robot_msgs::GetRobotPoseResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "simple_robot_msgs/GetRobotPoseResult";
  }

  static const char* value(const ::simple_robot_msgs::GetRobotPoseResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::simple_robot_msgs::GetRobotPoseResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
int64 x\n\
int64 y\n\
";
  }

  static const char* value(const ::simple_robot_msgs::GetRobotPoseResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::simple_robot_msgs::GetRobotPoseResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetRobotPoseResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::simple_robot_msgs::GetRobotPoseResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::simple_robot_msgs::GetRobotPoseResult_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<int64_t>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<int64_t>::stream(s, indent + "  ", v.y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIMPLE_ROBOT_MSGS_MESSAGE_GETROBOTPOSERESULT_H