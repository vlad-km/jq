;;; -*- mode:lisp; coding:utf-8  -*-

;;;
;;; This file is part of the MOREN environment
;;; JQ - JSCL wrapper for JQuery library
;;; Copyright © 2017 Vladimir Mezentsev
;;;

(in-package :jq)

;;;
;;; These methods allow us to insert new content inside an existing element.
;;;
;;; See: http://api.jquery.com/category/manipulation/dom-insertion-inside/
;;;


;;; .append()
;;; Insert content, specified by the parameter, to the end of each element in the set of matched elements.

(defun append (jse content)
    (funcall ((oget jse "append" "bind") jse content)))

(export '(jq::append))


;;; .appendTo()
;;; Insert every element in the set of matched elements to the end of the target.
(defun append-to (jse content)
    (funcall ((oget jse "appendTo" "bind") jse content)))

(export '(jq::append-to))



;;; jq:html
;;;
;;; (jq:html jqe)
;;; =>
;;;      Get the HTML contents of the first element in the set of matched elements
;;;
;;; (jq:html jqe "<p>All new content. <em>You bet!</em></p>")
;;;
;;;      midagi string or function
;;;      A string of HTML to set as the content of each matched element.
;;;      A function returning the HTML content to set.
;;;              => (fn index old-html)
;;;              <= html-string
;;;

(defun html (jse &optional midagi)
    (if midagi
        (funcall ((oget jse "html" "bind") jse midagi))
        (funcall ((oget jse "html" "bind") jse))))

(export '(jq::html))


;;; .prepend()
;;; Insert content, specified by the parameter, to the beginning of each element in the set of matched elements.

(defun prepend (jse content &optional midagi)
    (if midagi
        (funcall ((oget jse "prepend" "bind") jse content midagi))
        (funcall ((oget jse "prepend" "bind") jse content))))

(export '(jq::prepend))




;;; .prependTo()
;;; Insert every element in the set of matched elements to the beginning of the target.
(defun prepend-to (jse target)
    (funcall ((oget jse "prependTo" "bind") jse target)))

(export '(jq::prepend-to))


;;; .text()
;;; Get the combined text contents of each element in the set of matched elements, including their
;;; descendants, or set the text contents of the matched elements.
;;;
;;;
(defun text (jse &optional midagi)
    (if midagi
        (funcall ((oget jse "text" "bind") jse midagi))
        (funcall ((oget jse "text" "bind") jse))))

(export '(jq::text))

(in-package :cl-user)

;;; EOF
