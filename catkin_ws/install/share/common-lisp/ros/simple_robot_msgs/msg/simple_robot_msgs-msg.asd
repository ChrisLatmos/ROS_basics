
(cl:in-package :asdf)

(defsystem "simple_robot_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "TemperatureReading" :depends-on ("_package_TemperatureReading"))
    (:file "_package_TemperatureReading" :depends-on ("_package"))
    (:file "VictimFound" :depends-on ("_package_VictimFound"))
    (:file "_package_VictimFound" :depends-on ("_package"))
    (:file "GetRobotPoseActionGoal" :depends-on ("_package_GetRobotPoseActionGoal"))
    (:file "_package_GetRobotPoseActionGoal" :depends-on ("_package"))
    (:file "GetRobotPoseActionFeedback" :depends-on ("_package_GetRobotPoseActionFeedback"))
    (:file "_package_GetRobotPoseActionFeedback" :depends-on ("_package"))
    (:file "GetRobotPoseResult" :depends-on ("_package_GetRobotPoseResult"))
    (:file "_package_GetRobotPoseResult" :depends-on ("_package"))
    (:file "GetRobotPoseAction" :depends-on ("_package_GetRobotPoseAction"))
    (:file "_package_GetRobotPoseAction" :depends-on ("_package"))
    (:file "GetRobotPoseActionResult" :depends-on ("_package_GetRobotPoseActionResult"))
    (:file "_package_GetRobotPoseActionResult" :depends-on ("_package"))
    (:file "GetRobotPoseFeedback" :depends-on ("_package_GetRobotPoseFeedback"))
    (:file "_package_GetRobotPoseFeedback" :depends-on ("_package"))
    (:file "GetRobotPoseGoal" :depends-on ("_package_GetRobotPoseGoal"))
    (:file "_package_GetRobotPoseGoal" :depends-on ("_package"))
  ))