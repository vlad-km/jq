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


;;; These methods allow us to insert new content outside an existing element.
;;; See: http://api.jquery.com/category/manipulation/dom-insertion-outside/



;;; .after()
;;; Insert content, specified by the parameter, after each element in the set of matched elements.
;;; .after( content [, content ] )
;;;      content | midagi
;;;      Type: htmlString or Element or Text or Array or jQuery
;;;      HTML string, DOM element, text node, array of elements and text nodes, or jQuery object to insert
;;;      after each element in the set of matched elements.
;;; .after( function )
;;;         function
;;;         Type: Function( Integer index ) => htmlString or Element or Text or jQuery
;;;         A function that returns an HTML string, DOM element(s), text node(s), or jQuery object to
;;;         insert after each element in the set of matched elements. Receives the index position of
;;;         the element in the set as an argument. Within the function, this refers to
;;;         the current element in the set.
;;; .after( function-html )
;;;         function-html
;;;         Type: Function( Integer index, String html ) => htmlString or Element or Text or jQuery
;;;         A function that returns an HTML string, DOM element(s), text node(s), or jQuery object to
;;;         insert after each element in the set of matched elements. Receives the index position of the
;;;         element in the set and the old HTML value of the element as arguments. Within the function,
;;;         this refers to the current element in the set.
(export '(jq::after))
(defun after (jse content &optional (midagi "")) (@call (jse "after") content midagi))

;;; .before()
;;; Insert content, specified by the parameter, before each element in the set of matched elements.
;;; .before( content [, content ] )
;;;        content
;;;        Type: htmlString or Element or Text or Array or jQuery
;;;        HTML string, DOM element, text node, array of elements and text nodes, or jQuery object to
;;;        insert before each element in the set of matched elements.
;;; .before( function )
;;;        function
;;;        Type: Function( Integer index ) => htmlString or Element or Text or jQuery
;;;        A function that returns an HTML string, DOM element(s), text node(s), or jQuery
;;;        object to insert before each element in the set of matched elements. Receives the index position
;;;        of the element in the set as an argument. Within the function, this refers to the current
;;;        element in the set.
;;; .before( function-html )
;;;        function-html
;;;        Type: Function( Integer index, String html ) => htmlString or Element or Text or jQuery
;;;        A function that returns an HTML string, DOM element(s), text node(s), or jQuery object to
;;;        insert before each element in the set of matched elements. Receives the index position
;;;        of the element in the set and the old HTML value of the element as arguments.
;;;        Within the function, this refers to the current element in the set.
(export '(jq::before))
(defun before (jse content &optional (midagi "")) (@call (jse "before") content midagi))

;;; .insertAfter()
;;; Insert every element in the set of matched elements after the target.
;;; .insertAfter( target )
;;;           target
;;;           Type: Selector or htmlString or Element or Array or jQuery
;;;           A selector, element, array of elements, HTML string, or jQuery object
;;;           the matched set of elements will be inserted after the element(s) specified by this parameter.
(export '(jq::insert-after))
(defun insert-after (jse target) (@call (jse "insertAfter") content midagi))

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
(export '(jq::insert-before))
(defun insert-before (jse target) (@call (jse "insertBefore") content target))


(in-package :cl-user)

;;; EOF
