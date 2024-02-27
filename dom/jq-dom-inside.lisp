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


;;; These methods allow us to insert new content inside an existing element.
;;; See: http://api.jquery.com/category/manipulation/dom-insertion-inside/


;;; .append()
;;; Insert content, specified by the parameter, to the end of each element in the set of matched elements.
(export '(jq::append))
(defun append (jse content) (@call (jse "append") content))

;;; .appendTo()
;;; Insert every element in the set of matched elements to the end of the target.
(export '(jq::append-to))
(defun append-to (jse content) (@call (jse "appendTo") content))

;;; jq:html
;;; (jq:html jqe)
;;; =>
;;;      Get the HTML contents of the first element in the set of matched elements
;;; (jq:html jqe "<p>All new content. <em>You bet!</em></p>")
;;;      setter - string or function
;;;               A string of HTML to set as the content of each matched element.
;;;               A function returning the HTML content to set.
;;;                => (fn index old-html)
;;;                <= html-string
(export '(jq::html))
(defun html (jse &optional (setter "")) (@call (jse "appendTo") setter))

;;; .prepend()
;;; Insert content, specified by the parameter, to the beginning of each element in the set of matched elements.
;;; content:  htmlString or Element or Text or Array or jQuery
;;;          DOM element, text node, array of elements and text nodes,
;;;          HTML string, or jQuery object to insert at the beginning of each
;;;          element in the set of matched elements.
;;; content1: htmlString or Element or Text or Array or jQuery
;;;           One or more additional DOM elements, text nodes, arrays of elements
;;;           and text nodes, HTML strings, or jQuery objects to insert at the beginning
;;;           of each element in the set of matched elements.
(export '(jq::prepend))
(defun prepend (jse content &optional (midagi "")) (@call (jse "appendTo") content midagi))

;;; .prependTo()
;;; Insert every element in the set of matched elements to the beginning of the target.
;;; target  Selector or htmlString or Element or Array or jQuery
;;;         A selector, element, HTML string, array of elements, or jQuery object
;;;         the matched set of elements will be inserted at the beginning of the
;;;         element(s) specified by this parameter.
(export '(jq::prepend-to))
(defun prepend-to (jse target) (@call (jse "prependTo") target))

;;; .text()
;;; Get the combined text contents of each element in the set of matched elements, including their
;;; descendants, or set the text contents of the matched elements.
;;; content - String or Number or Boolean
;;;           The text to set as the content of each matched element.
;;;           When Number or Boolean is supplied, it will be converted
;;;           to a String representation.
(export '(jq::text))
(defun text (jse &optional (content "")) (@call (jse "text") target))


(in-package :cl-user)

;;; EOF
