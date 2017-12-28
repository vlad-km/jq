;;; -*- mode:lisp; coding:utf-8  -*-

;;;
;;; This file is part of the MOREN environment
;;; JQ - JSCL wrapper for JQuery library
;;; Copyright © 2017 Vladimir Mezentsev
;;;


(in-package :jq)

;;;
;;;
;;; ($ string)
;;; ($ dom-element)
;;;

(defun $ (&optional one two)
    (if two
        (#j:$ one two)
        (#j:$ one)))

(fset 'query #'$)
(export '(jq::$ jq::query))





(in-package :cl-user)


;;; EOF
