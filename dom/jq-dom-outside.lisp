;;; -*- mode:lisp; coding:utf-8  -*-

;;;
;;; This file is part of the MOREN environment
;;; JQ - JSCL wrapper for JQuery library
;;; Copyright © 2017 Vladimir Mezentsev
;;;

(in-package :jq)

;;;
;;; These methods allow us to insert new content outside an existing element.
;;;
;;; See: http://api.jquery.com/category/manipulation/dom-insertion-outside/
;;;



;;; .after()
;;; Insert content, specified by the parameter, after each element in the set of matched elements.
;;;
;;; .after( content [, content ] )
;;;      content
;;;      Type: htmlString or Element or Text or Array or jQuery
;;;
;;;      HTML string, DOM element, text node, array of elements and text nodes, or jQuery object to insert
;;;      after each element in the set of matched elements.
;;;
;;; .after( function )
;;;         function
;;;         Type: Function( Integer index ) => htmlString or Element or Text or jQuery
;;;         A function that returns an HTML string, DOM element(s), text node(s), or jQuery object to
;;;         insert after each element in the set of matched elements. Receives the index position of
;;;         the element in the set as an argument. Within the function, this refers to
;;;         the current element in the set.
;;;
;;; .after( function-html )
;;;         function-html
;;;         Type: Function( Integer index, String html ) => htmlString or Element or Text or jQuery
;;;         A function that returns an HTML string, DOM element(s), text node(s), or jQuery object to
;;;         insert after each element in the set of matched elements. Receives the index position of the
;;;         element in the set and the old HTML value of the element as arguments. Within the function,
;;;         this refers to the current element in the set.

(defun after (jse content &optional midagi)
    (if midagi
        (funcall ((oget jse "after" "bind") jse content midagi))
        (funcall ((oget jse "after" "bind") jse content))))

(export '(jq::after))




;;; .before()
;;; Insert content, specified by the parameter, before each element in the set of matched elements.
;;;
;;; .before( content [, content ] )
;;;        content
;;;        Type: htmlString or Element or Text or Array or jQuery
;;;        HTML string, DOM element, text node, array of elements and text nodes, or jQuery object to
;;;        insert before each element in the set of matched elements.
;;;
;;; .before( function )
;;;        function
;;;        Type: Function( Integer index ) => htmlString or Element or Text or jQuery
;;;        A function that returns an HTML string, DOM element(s), text node(s), or jQuery
;;;        object to insert before each element in the set of matched elements. Receives the index position
;;;        of the element in the set as an argument. Within the function, this refers to the current
;;;        element in the set.
;;;
;;; .before( function-html )
;;;        function-html
;;;        Type: Function( Integer index, String html ) => htmlString or Element or Text or jQuery
;;;        A function that returns an HTML string, DOM element(s), text node(s), or jQuery object to
;;;        insert before each element in the set of matched elements. Receives the index position
;;;        of the element in the set and the old HTML value of the element as arguments.
;;;        Within the function, this refers to the current element in the set.

(defun before (jse content &optional midagi)
    (if midagi
        (funcall ((oget jse "before" "bind") jse content midagi))
        (funcall ((oget jse "before" "bind") jse content))))

(export '(jq::before))



;;; .insertAfter()
;;; Insert every element in the set of matched elements after the target.
;;;
;;; .insertAfter( target )
;;;           target
;;;           Type: Selector or htmlString or Element or Array or jQuery
;;;           A selector, element, array of elements, HTML string, or jQuery object
;;;           the matched set of elements will be inserted after the element(s) specified by this parameter.

(defun insert-after (jse target)
    (funcall ((oget jse "insertAfter" "bind") jse target)))

(export '(jq::insert-after))





;;; .insertBefore()
;;; Insert every element in the set of matched elements before the target.
;;;
;;; .insertBefore( target )
;;;          target
;;;          Type: Selector or htmlString or Element or Array or jQuery
;;;          A selector, element, array of elements, HTML string, or jQuery object the matched
;;;          set of elements will be inserted before the element(s) specified by this parameter.
;;;
;;; The .before() and .insertBefore() methods perform the same task.

(defun insert-before (jse target)
    (funcall ((oget jse "insertBefore" "bind") jse target)))

(export '(jq::insert-before))



(in-package :cl-user)

;;; EOF
