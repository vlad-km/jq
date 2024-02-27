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

;;; These methods allow us to insert new content surrounding existing content.
;;; See: http://api.jquery.com/category/manipulation/dom-insertion-around/


;;; .unwrap()
;;; Remove the parents of the set of matched elements from the DOM, leaving the matched elements in their place.
;;;   (jq:unwrap jqe)
;;;   (jq:unwrap jqe selector-string)
(export '(unwrap))
(defun unwrap (jse &optional (midagi "")) (@call (jse "unwrap") midagi))

;;; .wrap()
;;; Wrap an HTML structure around each element in the set of matched elements.
;;; .wrap( wrappingElement)
;;;     Returns: jQuery
;;;     Description: Wrap an HTML structure around each element in the set of matched elements.
;;;        wrappingElement
;;;          Type: Selector or htmlString or Element or jQuery
;;;          function
;;;          Type: Function( Integer index ) => String or jQuery
(export '(jq::wrap))
(defun wrap (jse wre) (@call (jse "wrap") wre))

;;; .wrapAll()
;;; Wrap an HTML structure around all elements in the set of matched elements.
;;; .wrapAll( wrappingElement)
;;;     Returns: jQuery
;;;     Description: A selector, element, HTML string, or jQuery object specifying
;;;                  the structure to wrap around the matched elements.
;;;        wrappingElement
;;;          Type: Selector or htmlString or Element or jQuery
;;;          function
;;;          Type: Function( Integer index ) => String or jQuery
(export '(jq::wrap-All))
(defun wrap-All (jse wre) (@call (jse "wrapAll") wre))

;;; .wrapInner()
;;; Wrap an HTML structure around the content of each element in the set of matched elements.
;;; .wrapInner( wrappingElement)
;;;     Returns: jQuery
;;;     Description: A selector, element, HTML string, or jQuery object specifying
;;;                  the structure to wrap around the matched elements.
;;;        wrappingElement
;;;          Type: Selector or htmlString or Element or jQuery
;;;          function
;;;          Type: Function( Integer index ) => String or jQuery
(export '(jq::wrap-Inner))
(defun wrap-Inner (jse wre) (@call (jse "wrapInner") wre))


(in-package :cl-user)


;;; EOF
