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
;;; These methods inspect and manipulate the CSS classes assigned to elements.
;;;
;;; See: http://api.jquery.com/category/manipulation/class-attribute/
;;;



;;;
;;; (jq:add-class string)
;;;
;;; (jq:add-class function)
;;;     => fn
;;;        (fn (index current-class))
;;;        See: http://api.jquery.com/addClass/
;;;
;;;    (jq:add-class
;;;          (jq:last (js:$ "p")) "selected")
;;;
;;;    (jq:add-class *div "selected")
;;;

(defun add-class (jqe class)
    (funcall ((oget jqe "addClass" "bind")  jqe class)))

(export '(jq::add-class))



;;; jq:has-Class
;;; Determine whether any of the matched elements are assigned the given class
;;;
;;; (dom:mount dom:*body
;;;     (html:div :mount (html:p :id "blonde"
;;;                              :class "meet")))
;;;
;;; (jq:has-class (jq:$ "#blonde") "dinosaur")
;;;
;;; => boolean
;;;          t   - blonde will meet a dinosaur p= 1/2
;;;          nil - blonde will not meet the dinosaur p= 1/2
;;;
;;;
;;; (jq:append (jq:$ "#result3")
;;;            (if (jq:hash-class (jq:$ "p") "dinosaur") "meet" "not meet"))
;;;
(defun has-class (jqe class-name)
    (funcall ((oget jqe "hasClass" "bind") jqe class-name)))

(export '(jq::has-class))


;;; jq:removeClass
;;;
;;; Remove a single class, multiple classes, or all classes
;;; from each element in the set of matched elements.
;;;
;;; See http://api.jquery.com/removeClass/
;;;
;;; (jq:remove-class jqe class-name)
;;;

(defun remove-class (jqe class-name)
    (funcall ((oget jqe "removeClass" "bind") jqe class-name)))

(export '(jq::remove-class))


;;; jq:toggleClass
;;;
;;; Add or remove one or more classes from each element in the set of matched elements,
;;; depending on either the class's presence or the value of the state argument.
;;;
;;; See http://api.jquery.com/toggleClass/#toggleClass-function-state
;;;
;;; (jq:toggle-class jqe class-name)
;;; (jq:toggle-class jqe class-name state)
;;; (jq:toggle-class jqe fn &optional state)
;;;
;;;

(defun toggle-class (jqe class-name-or-fn &optional midagi)
    (if midagi
        (funcall ((oget jqe "toggleClass" "bind") jqe class-name-or-fn midagi))
        (funcall ((oget jqe "toggleClass" "bind") jqe class-name-or-fn)) ))

(export '(jq::toggle-class))


(in-package :cl-user)

;;; EOF
