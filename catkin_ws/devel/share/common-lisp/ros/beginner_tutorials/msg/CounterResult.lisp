; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude CounterResult.msg.html

(cl:defclass <CounterResult> (roslisp-msg-protocol:ros-message)
  ((result_message
    :reader result_message
    :initarg :result_message
    :type cl:string
    :initform ""))
)

(cl:defclass CounterResult (<CounterResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CounterResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CounterResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<CounterResult> is deprecated: use beginner_tutorials-msg:CounterResult instead.")))

(cl:ensure-generic-function 'result_message-val :lambda-list '(m))
(cl:defmethod result_message-val ((m <CounterResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:result_message-val is deprecated.  Use beginner_tutorials-msg:result_message instead.")
  (result_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CounterResult>) ostream)
  "Serializes a message object of type '<CounterResult>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CounterResult>) istream)
  "Deserializes a message object of type '<CounterResult>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CounterResult>)))
  "Returns string type for a message object of type '<CounterResult>"
  "beginner_tutorials/CounterResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CounterResult)))
  "Returns string type for a message object of type 'CounterResult"
  "beginner_tutorials/CounterResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CounterResult>)))
  "Returns md5sum for a message object of type '<CounterResult>"
  "be8a5eb8699d93f379b287dcfc6e376c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CounterResult)))
  "Returns md5sum for a message object of type 'CounterResult"
  "be8a5eb8699d93f379b287dcfc6e376c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CounterResult>)))
  "Returns full string definition for message of type '<CounterResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string result_message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CounterResult)))
  "Returns full string definition for message of type 'CounterResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string result_message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CounterResult>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CounterResult>))
  "Converts a ROS message object to a list"
  (cl:list 'CounterResult
    (cl:cons ':result_message (result_message msg))
))
