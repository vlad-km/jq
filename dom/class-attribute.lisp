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


;;; Class Attribute
;;; These methods inspect and manipulate the CSS classes assigned to elements.

(in-package :jq)

;;; .addClass()
;;; Adds the specified class(es) to each element in the set of matched elements.
;;; .addClass( className )
;;; className
;;;         Type: String
;;;               One or more space-separated classes to be added
;;;               to the class attribute of each matched element.
;;;         Type: Function( Integer index, String currentClassName ) => String
;;;               A function returning one or more space-separated class names
;;;               to be added to the existing class name(s). Receives the index
;;;               position of the element in the set and the existing class name(s)
;;;               as arguments. Within the function, this refers to the current element
;;;               in the set.
(export '(add-class))
(defun add-class (jq name) (@call (jq "addClass") name))

;;; .hasClass()
;;; Determine whether any of the matched elements are assigned the given class.
;;; class-name - String
(export '(has-class))
(defun has-class (jq name) (@call (jq "hasClass") name))


;;; .removeClass()
;;; Remove a single class, multiple classes, or all classes from each element in the set of matched elements.
;;; class-name - String
;;;            - Function( Integer index, String className ) => String
;;;              A function returning one or more space-separated class names to be removed.
;;;              Receives the index position of the element in the set and the old class
;;;              value as arguments.
(export '(remove-class))
(defun remove-class (jq name) (@call (jq "removeClass") name))

;;; .toggleClass()
;;; Add or remove one or more classes from each element in the set of matched elements,
;;; depending on either the class’s presence or the value of the state argument.
(export '(toggle-class))
(defun toggle-class (jq name) (@call (jq "toggleClass") name))

(in-package :cl-user)

;;; EOF
