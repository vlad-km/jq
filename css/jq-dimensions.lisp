;;; -*- mode:lisp; coding:utf-8  -*-


;;;
;;; This file is part of the MOREN environment
;;; JQ - JSCL wrapper for JQuery library
;;; Copyright © 2017 Vladimir Mezentsev
;;;


(in-package :jq)


;;;
;;; These methods are used to get and set the CSS dimensions for the various properties.
;;;
;;; See: http://api.jquery.com/category/dimensions/
;;;



;;; (jq:height jqe)
;;;
;;; Get the current computed height for the first element in the set of matched
;;; elements or set the height of every matched element.
;;;
;;;
;;; (jq:height jqe (lambda ))
;;;        Type: Function( Integer index, Integer height ) => String or Number
;;;              A function returning the height to set. Receives the index position of the
;;;              element in the set and the old height as arguments. Within the function,
;;;              this refers to the current element in the set.
;;;              Get the current computed height for the first element in the set of matched elements
;;;              or set the height of every matched element.
;;;
;;; (jq:height jqe value)
;;;   => Type: String or Number
;;;      An integer representing the number of pixels, or an integer with an optional
;;;      unit of measure appended (as a string).
;;;
;;; (jq:height)
;;;    =>  Get the current computed height for the first element in the set of matched elements.
;;;
(defun height (jqe &optional midagi)
    (if midagi
        (funcall ((oget jqe "height" "bind") jqe midagi))
        (funcall ((oget jqe "height" "bind") jqe)) ))

(export '(jq::height))



;;; .innerHeight()
;;; Get the current computed inner height (including padding but not border) for the first element
;;; in the set of matched elements or set the inner height of every matched element.
;;;
;;; .innerHeight()
;;;        Get the current computed height for the first element in the set of matched
;;;        elements, including padding but not border.
;;;
;;; .innerHeight( value )
;;;        Type: String or Number
;;;        A number representing the number of pixels, or a number along with an optional
;;;        unit of measure appended (as a string).
;;;
;;; .innerHeight( function )
;;;        Type: Function( Integer index, Number height ) => String or Number
;;;        A function returning the inner height (including padding but not border) to set.
;;;        Receives the index position of the element in the set and the old inner height
;;;        as arguments. Within the function, this refers to the current element in the set.
;;;
(defun inner-height (jqe &optional midagi)
    (if midagi
        (funcall ((oget jqe "innerHeight" "bind") jqe midagi))
        (funcall ((oget jqe "innerHeight" "bind") jqe)) ) )

(export '(jq::inner-height))


;;; .innerWidth()
;;;
;;; Get the current computed inner width (including padding but not border) for the first element
;;; in the set of matched elements or set the inner width of every matched element.
;;;
;;; .innerWidth()
;;;      Get the current computed inner width for the first element in the
;;;      set of matched elements, including padding but not border.
;;;
;;; .innerWidth( value )
;;;      Set the CSS inner width of each element in the set of matched elements.
;;;      Type: String or Number
;;;      A number representing the number of pixels, or a number along with an optional
;;;      unit of measure appended (as a string).
;;;
;;; .innerWidth( function )
;;;     Type: Function( Integer index, Number width ) => String or Number
;;;     A function returning the inner width (including padding but not border) to set.
;;;     Receives the index position of the element in the set and the old inner width
;;;     as arguments. Within the function, this refers to the current element in the set.
;;;
(defun inner-width (jqe &optional midagi)
    (if midagi
        (funcall ((oget jqe "innerWidth" "bind") jqe midagi))
        (funcall ((oget jqe "innerWidth" "bind") jqe)) ) )

(export '(jq::inner-width))


;;; .outerHeight()
;;;
;;; Get the current computed outer height (including padding, border, and optionally margin)
;;; for the first element in the set of matched elements or set the outer height of every matched element.
;;;
;;; .outerHeight( [includeMargin ] )
;;;        Get the current computed outer height (including padding, border, and optionally margin)
;;;        for the first element in the set of matched elements.
;;;        includeMargin (default: false)
;;;
;;;        Type: Boolean
;;;             A Boolean indicating whether to include the element's margin in the calculation.
;;;             version added: 1.2.6.outerWidth( [includeMargin ] )
;;;
;;; .outerHeight( value )
;;;       Set the CSS outer height of each element in the set of matched elements
;;;
;;;       Type: String or Number
;;;             A number representing the number of pixels, or a number along
;;;             with an optional unit of measure appended (as a string).
;;;
;;; .outerHeight( function )
;;;
;;;       Type: Function( Integer index, Number height ) => String or Number
;;;             A function returning the outer height to set. Receives the index position
;;;             of the element in the set and the old outer height as arguments. Within
;;;             the function, this refers to the current element in the set.
;;;
(defun outer-height (jqe &optional midagi)
    (if midagi
        (funcall ((oget jqe "outerHeight" "bind") jqe midagi))
        (funcall ((oget jqe "outerHeight" "bind") jqe)) ) )

(export '(jq::outer-height))


;;; .outerWidth()
;;;
;;; Get the current computed outer width (including padding, border, and optionally margin)
;;; for the first element in the set of matched elements or set the outer width of every matched element.
;;;
;;; .outerWidth( [includeMargin ] )
;;;        Get the current computed outer width (including padding, border, and optionally margin)
;;;        for the first element in the set of matched elements.
;;;        includeMargin (default: false)
;;;
;;;        Type: Boolean
;;;             A Boolean indicating whether to include the element's margin in the calculation.
;;;             version added: 1.2.6.outerWidth( [includeMargin ] )
;;;
;;;
;;;
;;; .outerWidth( value )
;;;       Set the CSS outer width of each element in the set of matched elements
;;;
;;;       Type: String or Number
;;;             A number representing the number of pixels, or a number along
;;;             with an optional unit of measure appended (as a string).
;;;
;;; .outerWidth( function )
;;;       Type: Function( Integer index, Number height ) => String or Number
;;;             A function returning the outer width to set. Receives the index position
;;;             of the element in the set and the old outer width as arguments. Within
;;;             the function, this refers to the current element in the set.
;;;
(defun outer-width (jqe &optional midagi)
    (if midagi
        (funcall ((oget jqe "outerWidth" "bind") jqe midagi))
        (funcall ((oget jqe "outerWidth" "bind") jqe)) ) )

(export '(jq::outer-width))



;;; .width()
;;;
;;; Get the current computed width for the first element in the set of matched elements
;;; or set the width of every matched element.
;;;
;;; .width()
;;;
;;; .width( value )
;;;      Set the CSS width of each element in the set of matched elements
;;;
;;; .width( function )
;;;      Type: Function( Integer index, Integer value ) => String or Number
;;;            A function returning the width to set. Receives the index position of the
;;;            element in the set and the old width as arguments. Within the function,
;;;            this refers to the current element in the set.
;;;
(defun width (jqe &optional midagi)
    (if midagi
        (funcall ((oget jqe "width" "bind") jqe midagi))
        (funcall ((oget jqe "width" "bind") jqe)) ) )

(export '(jq::width))


(in-package :cl-user)

;;; EOF
