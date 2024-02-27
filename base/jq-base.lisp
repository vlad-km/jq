;;; -*- mode:lisp;  coding:utf-8 -*-
#|

            /\___/\
            )     (
           =\     /=                  if this code is not work, i dont know who wrote this code
             )   (                    Copyright (c) 2017,2024  @vlad-km
            /     \                   
            )     (                   
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
