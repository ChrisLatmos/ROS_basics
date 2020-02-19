; Auto-generated. Do not edit!


(cl:in-package simple_robot_msgs-msg)


;//! \htmlinclude VictimFound.msg.html

(cl:defclass <VictimFound> (roslisp-msg-protocol:ros-message)
  ((thermal
    :reader thermal
    :initarg :thermal
    :type cl:string
    :initform ""))
)

(cl:defclass VictimFound (<VictimFound>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VictimFound>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VictimFound)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simple_robot_msgs-msg:<VictimFound> is deprecated: use simple_robot_msgs-msg:VictimFound instead.")))

(cl:ensure-generic-function 'thermal-val :lambda-list '(m))
(cl:defmethod thermal-val ((m <VictimFound>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_robot_msgs-msg:thermal-val is deprecated.  Use simple_robot_msgs-msg:thermal instead.")
  (thermal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VictimFound>) ostream)
  "Serializes a message object of type '<VictimFound>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'thermal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'thermal))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VictimFound>) istream)
  "Deserializes a message object of type '<VictimFound>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'thermal) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'thermal) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VictimFound>)))
  "Returns string type for a message object of type '<VictimFound>"
  "simple_robot_msgs/VictimFound")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VictimFound)))
  "Returns string type for a message object of type 'VictimFound"
  "simple_robot_msgs/VictimFound")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VictimFound>)))
  "Returns md5sum for a message object of type '<VictimFound>"
  "1a6f246af020e67df0b9fb8d47f8dd0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VictimFound)))
  "Returns md5sum for a message object of type 'VictimFound"
  "1a6f246af020e67df0b9fb8d47f8dd0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VictimFound>)))
  "Returns full string definition for message of type '<VictimFound>"
  (cl:format cl:nil "string thermal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VictimFound)))
  "Returns full string definition for message of type 'VictimFound"
  (cl:format cl:nil "string thermal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VictimFound>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'thermal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VictimFound>))
  "Converts a ROS message object to a list"
  (cl:list 'VictimFound
    (cl:cons ':thermal (thermal msg))
))
