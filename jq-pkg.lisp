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

(eval-when (:compile-toplevel :load-toplevel :execute)
  (let* ((need "1.8.3")
         (present #j:$:fn:jquery))
    (cond (#+nil (string= need present) nil)
          ((string<= need present) nil)
          (t (error "Wrong JQUERY version. Need: ~a Present: ~a." need present))))
  (unless (find-package "JQ") (defpackage :jq  (:use :cl)))) 


;;; EOF
