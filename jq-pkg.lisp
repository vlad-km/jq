;;; -*- mode:lisp; coding:utf-8  -*-

;;;
;;; This file is part of the MOREN environment
;;; JQ - JSCL wrapper for JQuery library
;;; Copyright © 2017 Vladimir Mezentsev
;;;



(unless (find-package :jq)
    (defpackage jq))

(in-package :jq)

(cl:export '(cl:defun cl:funcall cl:export cl:in-package cl::&optional cl::&rest
             cl:if cl:list cl:t cl:nil))

(export '(jscl::fset jscl::oget jscl::mkjso))

(in-package :cl-user)

;;; EOF
