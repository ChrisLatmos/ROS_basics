; Auto-generated. Do not edit!


(cl:in-package simple_robot_msgs-msg)


;//! \htmlinclude TemperatureReading.msg.html

(cl:defclass <TemperatureReading> (roslisp-msg-protocol:ros-message)
  ((temp
    :reader temp
    :initarg :temp
    :type cl:integer
    :initform 0))
)

(cl:defclass TemperatureReading (<TemperatureReading>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TemperatureReading>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TemperatureReading)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simple_robot_msgs-msg:<TemperatureReading> is deprecated: use simple_robot_msgs-msg:TemperatureReading instead.")))

(cl:ensure-generic-function 'temp-val :lambda-list '(m))
(cl:defmethod temp-val ((m <TemperatureReading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_robot_msgs-msg:temp-val is deprecated.  Use simple_robot_msgs-msg:temp instead.")
  (temp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TemperatureReading>) ostream)
  "Serializes a message object of type '<TemperatureReading>"
  (cl:let* ((signed (cl:slot-value msg 'temp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TemperatureReading>) istream)
  "Deserializes a message object of type '<TemperatureReading>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temp) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TemperatureReading>)))
  "Returns string type for a message object of type '<TemperatureReading>"
  "simple_robot_msgs/TemperatureReading")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TemperatureReading)))
  "Returns string type for a message object of type 'TemperatureReading"
  "simple_robot_msgs/TemperatureReading")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TemperatureReading>)))
  "Returns md5sum for a message object of type '<TemperatureReading>"
  "5835df3073cf527834fa08f502b2957f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TemperatureReading)))
  "Returns md5sum for a message object of type 'TemperatureReading"
  "5835df3073cf527834fa08f502b2957f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TemperatureReading>)))
  "Returns full string definition for message of type '<TemperatureReading>"
  (cl:format cl:nil "int64 temp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TemperatureReading)))
  "Returns full string definition for message of type 'TemperatureReading"
  (cl:format cl:nil "int64 temp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TemperatureReading>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TemperatureReading>))
  "Converts a ROS message object to a list"
  (cl:list 'TemperatureReading
    (cl:cons ':temp (temp msg))
))
