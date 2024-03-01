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

(defmacro @bind ((obj &rest methods) &body args)
  `((jscl::oget ,obj ,@methods "bind") ,obj ,@args))

(defmacro @get (obj &rest pathes)
  `(jscl::oget ,obj ,@pathes ))

;;; jQuery
(export '($))
(defun $ (a &optional (o "")) (#j:$ a o))

;;; Retrieve the DOM elements matched by the jQuery object.
;;; Without a parameter, .get() returns an array of all of the elements
;;; A negative index is counted from the end of the matched set
(export '([q].get))
(defun [q].get (jq &optional (index 0)) (@call (jq "get")))


;;; .index()Returns: Integer
;;; Description: Search for a given element from among the matched elements.
;;; .index()  This signature does not accept any arguments.
;;; .index( selector )
;;;       Type: Selector
;;;             A selector representing a jQuery collection in which to look for an element.
;;; .index( element )
;;;         element Type: Element or jQuery
;;;         The DOM element or first element within the jQuery object to look for.
;;; Return Values
;;; - If no argument is passed to the .index() method, the return value is an integer indicating
;;;   the position of the first element within the jQuery object relative to its sibling elements.
;;; - If .index() is called on a collection of elements and a DOM element or jQuery object is
;;;   passed in, .index() returns an integer indicating the position of the passed element relative
;;;   to the original collection.
;;; - If a selector string is passed as an argument, .index() returns an integer indicating
;;;   the position of the first element within the jQuery object relative to the elements matched by the selector.
;;; - If the element is not found, .index() will return -1.
;;; See https://api.jquery.com/index/
(export '([q].index))
(defun [q].index (jq &optional (midage "")) (@call (jq "index") midagi))

;;; .toArray()
;;; Retrieve all the elements contained in the jQuery set, as an array.
(export '([q].to-array))
(defun [q].to-array (jq) (@call (jq "toArray")))


(in-package :cl-user)


;;; EOF
