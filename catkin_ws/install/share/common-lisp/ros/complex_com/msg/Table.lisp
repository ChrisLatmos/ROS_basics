; Auto-generated. Do not edit!


(cl:in-package complex_com-msg)


;//! \htmlinclude Table.msg.html

(cl:defclass <Table> (roslisp-msg-protocol:ros-message)
  ((table
    :reader table
    :initarg :table
    :type cl:string
    :initform ""))
)

(cl:defclass Table (<Table>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Table>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Table)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name complex_com-msg:<Table> is deprecated: use complex_com-msg:Table instead.")))

(cl:ensure-generic-function 'table-val :lambda-list '(m))
(cl:defmethod table-val ((m <Table>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader complex_com-msg:table-val is deprecated.  Use complex_com-msg:table instead.")
  (table m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Table>) ostream)
  "Serializes a message object of type '<Table>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'table))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'table))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Table>) istream)
  "Deserializes a message object of type '<Table>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'table) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'table) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Table>)))
  "Returns string type for a message object of type '<Table>"
  "complex_com/Table")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Table)))
  "Returns string type for a message object of type 'Table"
  "complex_com/Table")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Table>)))
  "Returns md5sum for a message object of type '<Table>"
  "b23eaeab3fab1fc0f4aed0e9b11c7ae0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Table)))
  "Returns md5sum for a message object of type 'Table"
  "b23eaeab3fab1fc0f4aed0e9b11c7ae0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Table>)))
  "Returns full string definition for message of type '<Table>"
  (cl:format cl:nil "string table~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Table)))
  "Returns full string definition for message of type 'Table"
  (cl:format cl:nil "string table~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Table>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'table))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Table>))
  "Converts a ROS message object to a list"
  (cl:list 'Table
    (cl:cons ':table (table msg))
))
