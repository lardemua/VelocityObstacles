
(cl:in-package :asdf)

(defsystem "atlascar_base-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GearboxCommand" :depends-on ("_package_GearboxCommand"))
    (:file "_package_GearboxCommand" :depends-on ("_package"))
    (:file "GearboxStatus" :depends-on ("_package_GearboxStatus"))
    (:file "_package_GearboxStatus" :depends-on ("_package"))
    (:file "ManagerCommand" :depends-on ("_package_ManagerCommand"))
    (:file "_package_ManagerCommand" :depends-on ("_package"))
    (:file "ManagerStatus" :depends-on ("_package_ManagerStatus"))
    (:file "_package_ManagerStatus" :depends-on ("_package"))
    (:file "PlcCommand" :depends-on ("_package_PlcCommand"))
    (:file "_package_PlcCommand" :depends-on ("_package"))
    (:file "PlcStatus" :depends-on ("_package_PlcStatus"))
    (:file "_package_PlcStatus" :depends-on ("_package"))
    (:file "ThrottleCommand" :depends-on ("_package_ThrottleCommand"))
    (:file "_package_ThrottleCommand" :depends-on ("_package"))
    (:file "ThrottleStatus" :depends-on ("_package_ThrottleStatus"))
    (:file "_package_ThrottleStatus" :depends-on ("_package"))
  ))