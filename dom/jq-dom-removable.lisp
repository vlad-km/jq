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

;;; These methods allow us to delete elements from the DOM.
;;; See: http://api.jquery.com/category/manipulation/dom-removal/


;;; .detach()
;;; Remove the set of matched elements from the DOM.
;;; .detach( [selector ] )
;;;       selector
;;;       Type: Selector
;;;       A selector expression that filters the set of matched elements to be removed.
;;; The .detach() method is the same as .remove(), except that .detach() keeps all jQuery data associated
;;; with the removed elements. This method is useful when removed elements are to be reinserted into the DOM at a later time.
(export '(jq::detach))
(defun detach (jse &optional selector) (@call (jse "detach") selector))

;;; .empty()
;;; Remove all child nodes of the set of matched elements from the DOM.
(export '(jq::empty))
(defun empty (jse) (@call (jse "empty")))

;;; .remove()
;;; Remove the set of matched elements from the DOM.
;;; .remove( [selector ] )
;;;         selector
;;;         Type: String
;;;         A selector expression that filters the set of matched elements to be removed.
;;; Similar to .empty(), the .remove() method takes elements out of the DOM.
;;; Use .remove() when you want to remove the element itself, as well as everything inside it.
;;; In addition to the elements themselves, all bound events and jQuery data associated with
;;; the elements are removed. To remove the elements without removing data and events,
;;; use .detach() instead.
(export '(jq::remove))
(defun remove (jse &optional (selector"")) (@call (jse "remove") selector)

(in-package :cl-user)

;;; EOF
