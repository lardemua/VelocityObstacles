
(cl:in-package :asdf)

(defsystem "human_driver_monitor-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "HumanDriverMonitorStatus" :depends-on ("_package_HumanDriverMonitorStatus"))
    (:file "_package_HumanDriverMonitorStatus" :depends-on ("_package"))
  ))