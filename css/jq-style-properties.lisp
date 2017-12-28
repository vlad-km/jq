;;; -*- mode:lisp; coding:utf-8  -*-


;;;
;;; This file is part of the MOREN environment
;;; JQ - JSCL wrapper for JQuery library
;;; Copyright © 2017 Vladimir Mezentsev
;;;

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
