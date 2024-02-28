;;; -*- mode:lisp;  coding:utf-8 -*-
#|

            /\___/\
            )     (
           =\     /=                  if this code is not work, i dont know who wrote this code
             )   (                    Copyright (c) 2017,2024  @vlad-km
            /     \                   
            )     (                   2024, Code redesign
           /       \                  Electron >= electron@21.2.2
           \       /                  JSCL Moren edition
      jgs   \__ __/
               ))
              //
             ((
              \)
|#

(in-package :jq)


;;;
;;; These methods get and set CSS-related properties of elements.
;;;
;;; See: http://api.jquery.com/category/manipulation/style-properties/
;;;


;;;
;;; jq:css
;;;
;;; Get the value of a computed style property for the first element in the set of
;;; matched elements or set one or more CSS properties for every matched element.
;;;
;;; See http://api.jquery.com/css/#css-propertyNames
;;;
;;; (jq:css jqe propertyName)         jqe string
;;; (jq:css jqe propertyNames)        jqe array   strings
;;; (jq:css jqe propertyName value)   jqe string  string
;;; (jq:css jqe propertys)            jqe object
;;;

(defun css (jqe prop &optional midagi)
    (if midagi
        (funcall ((oget jqe "css" "bind") jqe prop midagi))
        (funcall ((oget jqe "css" "bind") jqe prop))))

(export '(jq::css))



(in-package :cl-user)


;;; EOF
