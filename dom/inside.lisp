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
;;;   .append( content [, content ] )
;;; content     Type: htmlString or Element or Text or Array or jQuery
;;;             DOM element, text node, array of elements and text nodes,
;;;             HTML string, or jQuery object to insert at the end of each element
;;;             in the set of matched elements.
;;; content     Type: htmlString or Element or Text or Array or jQuery
;;;             One or more additional DOM elements, text nodes, arrays of elements and text nodes,
;;;             HTML strings, or jQuery objects to insert at the end of each element in the set
;;;             of matched elements.
;;;  .append( function )
;;;           function     Type: Function( Integer index, String html ) =>
;;;                              htmlString or Element or Text or jQuery
;;;                        A function that returns an HTML string, DOM element(s),
;;;                        text node(s), or jQuery object to insert at the end of each element
;;;                        in the set of matched elements. Receives the index position of the element
;;;                        in the set and the old HTML value of the element as arguments.
;;;                        Within the function, this refers to the current element in the set.
;;;
;;; The .append() method inserts the specified content as the last child of each element in the
;;; jQuery collection (To insert it as the first child, use .prepend()).
;;;
;;; The .append() and .appendTo() methods perform the same task. The major difference is in
;;; the syntax-specifically, in the placement of the content and target. With .append(), the selector
;;; expression preceding the method is the container into which the content is inserted.
;;; With .appendTo(), on the other hand, the content precedes the method, either as a selector
;;; expression or as markup created on the fly, and it is inserted into the target container.
(export '(jq::[q].append))
(defun [q].append (jse content &rest others)
  (let ((f (@call (jse "append" "bind") content)))
    (apply f others)))

;;; .appendTo()
;;; Insert every element in the set of matched elements to the end of the target.
;;;
;;; .appendTo( target )
;;;            target   Type: Selector or htmlString or Element or Array or jQuery
;;;                     A selector, element, HTML string, array of elements, or jQuery object
;;;                     the matched set of elements will be inserted at the end of the element(s)
;;;                     specified by this parameter.
;;; 
;;; The .append() and .appendTo() methods perform the same task. The major difference
;;; is in the syntax-specifically, in the placement of the content and target. With .append(),
;;; the selector expression preceding the method is the container into which the content is inserted.
;;; With .appendTo(), on the other hand, the content precedes the method, either as a selector expression
;;; or as markup created on the fly, and it is inserted into the target container.
(export '(jq::[q].append-to))
(defun [q].append-to (jse target) (@call (jse "appendTo") target))

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
(export '(jq::[q].html))
(defun [q].html (jse &optional (setter "")) (@call (jse "appendTo") setter))

;;; .prepend()
;;; Insert content, specified by the parameter, to the beginning of each element in the set of matched elements.
;;; .prepend( content [, content1 ] )
;;; content:  htmlString or Element or Text or Array or jQuery
;;;          DOM element, text node, array of elements and text nodes,
;;;          HTML string, or jQuery object to insert at the beginning of each
;;;          element in the set of matched elements.
;;; content1: htmlString or Element or Text or Array or jQuery
;;;           One or more additional DOM elements, text nodes, arrays of elements
;;;           and text nodes, HTML strings, or jQuery objects to insert at the beginning
;;;           of each element in the set of matched elements.
;;; .prepend( function )
;;;           function   Type: Function( Integer elementOfArray, String html )
;;;                            => htmlString or Element or Text or jQuery
;;;                      A function that returns an HTML string, DOM element(s),
;;;                      text node(s), or jQuery object to insert at the beginning of each element
;;;                      in the set of matched elements.
;;;                      Receives the index position of the element in the set and the old HTML
;;;                      value of the element as arguments. Within the function, this refers to the current element in the set.
;;;
;;; The .prepend() method inserts the specified content as the first child of each element in the jQuery
;;; collection (To insert it as the last child, use .append()).
(export '(jq::[q].prepend))
(defun [q].prepend (jse content &rest midagi)
  (let ((f (@call  (jse "prepend" "bind") jse content)))
    (apply f midagi)))

;;; .prependTo()
;;; Insert every element in the set of matched elements to the beginning of the target.
;;; target  Selector or htmlString or Element or Array or jQuery
;;;         A selector, element, HTML string, array of elements, or jQuery object
;;;         the matched set of elements will be inserted at the beginning of the
;;;         element(s) specified by this parameter.
(export '(jq::[q].prepend-to))
(defun [q].prepend-to (jse target) (@call (jse "prependTo") target))

;;; .text()
;;; Get the combined text contents of each element in the set of matched elements, including their
;;; descendants, or set the text contents of the matched elements.
;;; .text(context)
;;; content - String or Number or Boolean
;;;           The text to set as the content of each matched element.
;;;           When Number or Boolean is supplied, it will be converted
;;;           to a String representation.
;;; .text( function )
;;;        function Type: Function( Integer index, String text ) => String
;;;                 A function returning the text content to set. Receives
;;;                 the index position of the element in the set and the
;;;                 old text value as arguments.
(export '(jq::[q].text))
(defun [q].text (jse &optional (content "")) (@call (jse "text") content))


(in-package :cl-user)

;;; EOF
