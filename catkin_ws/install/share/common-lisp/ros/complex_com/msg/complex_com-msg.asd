
(cl:in-package :asdf)

(defsystem "complex_com-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Table" :depends-on ("_package_Table"))
    (:file "_package_Table" :depends-on ("_package"))
  ))