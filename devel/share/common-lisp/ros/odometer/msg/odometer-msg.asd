
(cl:in-package :asdf)

(defsystem "odometer-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "OdometerStatus" :depends-on ("_package_OdometerStatus"))
    (:file "_package_OdometerStatus" :depends-on ("_package"))
  ))