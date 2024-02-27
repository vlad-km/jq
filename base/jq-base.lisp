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

(defmacro @call ((obj &rest methods) &body args)
  `((jscl::oget ,obj ,@methods) ,@args))

(defmacro @get (obj &rest pathes)
  `(jscl::oget ,obj ,@pathes ))


(defun $ (a &optional (o "")) (#j:$ a o))


(in-package :cl-user)


;;; EOF
