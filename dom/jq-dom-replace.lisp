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
;;; These methods are used to remove content from the DOM and replace it with new content.
;;;
;;; See: http://api.jquery.com/category/manipulation/dom-replacement/
;;;


;;; .replaceAll()
;;; Replace each target element with the set of matched elements.
;;;
;;; .replaceAll( target )
;;;              target
;;;              Type: Selector or jQuery or Array or Element
;;;              A selector string, jQuery object, DOM element, or array of elements
;;;              indicating which element(s) to replace.
;;;
;;;   The .replaceAll() method is similar to .replaceWith(), but with the source and target reversed.

(defun replace-all (jse target)
    (funcall ((oget jse "replaceAll" "bind") jse target)))

(export '(jq::replace-all))




;;; .replaceWith()
;;; Replace each element in the set of matched elements with the provided new content and return
;;; the set of elements that was removed.
;;;
;;; .replaceWith( newContent )
;;;               newContent
;;;               Type: htmlString or Element or Array or jQuery
;;;               The content to insert. May be an HTML string, DOM element, array of DOM elements, or jQuery object.
;;;
;;; .replaceWith( function )
;;;               function
;;;               Type: Function()
;;;               A function that returns content with which to replace the set of matched elements.
;;;
;;;  The .replaceWith() method removes content from the DOM and inserts new content in its place with a single call.

(defun replace-with (jse content)
    (funcall ((oget jse "replaceWith" "bind") jse content)))

(export '(jq::replace-with))


(in-package :cl-user)


;;; EOF
