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


;;; These methods get and set CSS-related properties of elements.
;;; See: http://api.jquery.com/category/manipulation/style-properties/

;;; jq:css
;;; Get the value of a computed style property for the first element in the set of
;;; matched elements or set one or more CSS properties for every matched element.
;;; See http://api.jquery.com/css/#css-propertyNames
;;;
;;; .css (propertyName)
;;; propertyName Type: String
;;;              A CSS property
;;; propertyNames Type: Array
;;;               An array of one or more CSS properties.
;;;
;;; .css( properties )
;;; properties Type: PlainObject
;;;            An object of property-value pairs to set.
;;;
;;; .css( propertyName, value )
;;; propertyName  Type: String
;;;               A CSS property name.
;;; value         Type: String or Number
;;;               A value to set for the property.
;;;
;;; .css( propertyName, function )
;;; propertyName Type: String
;;;              A CSS property name.
;;; function     Type: Function( Integer index, String value ) => String or Number
;;;              A function returning the value to set. this is the current element.
;;;              Receives the index position of the element in the set and the old
;;;              value as arguments.
(export '([q]:css))
(defun [q].css (jqe props &optional (midagi "")) (@call (jqe "css") props midagi))


(in-package :cl-user)

;;; EOF
