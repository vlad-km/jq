;;; -*- mode:lisp; coding:utf-8  -*-

;;;
;;; This file is part of the MOREN environment
;;; JQ - JSCL wrapper for JQuery library
;;; Copyright © 2017 Vladimir Mezentsev
;;;

(in-package :jq)

;;;
;;; These methods allow us to insert new content surrounding existing content.
;;;
;;; See: http://api.jquery.com/category/manipulation/dom-insertion-around/
;;;


;;; .unwrap()
;;;
;;; Remove the parents of the set of matched elements from the DOM, leaving the matched elements in their place.
;;;
;;; (jq:unwrap jqe)
;;; (jq:unwrap jqe selector-string)
;;;

(defun unwrap (jse &optional midagi)
    (if midagi
        (funcall ((oget jse "unwrap" "bind") jse midagi))
        (funcall ((oget jse "unwrap" "bind") jse))))

(export '(jq::unwrap))




;;; .wrap()
;;;
;;; Wrap an HTML structure around each element in the set of matched elements.
;;;
;;; .wrap( wrappingElement)
;;;     Returns: jQuery
;;;     Description: Wrap an HTML structure around each element in the set of matched elements.
;;;
;;;
;;;        wrappingElement
;;;          Type: Selector or htmlString or Element or jQuery
;;;
;;;          function
;;;          Type: Function( Integer index ) => String or jQuery
;;;

(defun wrap (jse wre)
    (funcall ((oget jse "wrap" "bind") jse wre)))

(export '(jq::wrap))


;;; .wrapAll()
;;;
;;; Wrap an HTML structure around all elements in the set of matched elements.
;;;
;;; .wrapAll( wrappingElement)
;;;     Returns: jQuery
;;;     Description: A selector, element, HTML string, or jQuery object specifying
;;;                  the structure to wrap around the matched elements.
;;;
;;;
;;;        wrappingElement
;;;          Type: Selector or htmlString or Element or jQuery
;;;
;;;          function
;;;          Type: Function( Integer index ) => String or jQuery
;;;

(defun wrap-All (jse wre)
    (funcall ((oget jse "wrapAll" "bind") jse wre)))

(export '(jq::wrap-All))




;;; .wrapInner()
;;;
;;; Wrap an HTML structure around the content of each element in the set of matched elements.
;;;
;;; .wrapInner( wrappingElement)
;;;     Returns: jQuery
;;;     Description: A selector, element, HTML string, or jQuery object specifying
;;;                  the structure to wrap around the matched elements.
;;;
;;;
;;;        wrappingElement
;;;          Type: Selector or htmlString or Element or jQuery
;;;
;;;          function
;;;          Type: Function( Integer index ) => String or jQuery
;;;

(defun wrap-Inner (jse wre)
    (funcall ((oget jse "wrapInner" "bind") jse wre)))

(export '(jq::wrap-Inner))


(in-package :cl-user)


;;; EOF
