;;; -*- mode:lisp; coding:utf-8  -*-


;;;
;;; This file is part of the MOREN environment
;;; JQ - JSCL wrapper for JQuery library
;;; Copyright © 2017 Vladimir Mezentsev
;;;


(in-package :jq)


;;;
;;; Effects
;;;
;;; See: http://api.jquery.com/category/effects/
;;;



;;; .animate()
;;; Perform a custom animation of a set of CSS properties.

;;; .clearQueue()
;;; Remove from the queue all items that have not yet been run.

;;; .delay()
;;; Set a timer to delay execution of subsequent items in the queue.

;;; .dequeue()
;;; Execute the next function on the queue for the matched elements.

;;; .fadeIn()
;;; Display the matched elements by fading them to opaque.

;;; .fadeOut()
;;;Hide the matched elements by fading them to transparent.

;;; .fadeTo()
;;; Adjust the opacity of the matched elements.

;;; .fadeToggle()
;;; Display or hide the matched elements by animating their opacity.

;;; .finish()
;;; Stop the currently-running animation, remove all queued animations, and complete all animations for the matched elements.


;;; (jq:hide jqe)
;;; Hide the matched elements.
;;;
;;; .hide()
;;; This signature does not accept any arguments.
;;;
;;; .hide( [duration ] )
;;;        duration (default: 400)
;;;        Type: Number or String
;;;        A string or number determining how long the animation will run.
;;;        fast | slow
;;;
(defun hide (jqe &optional duration)
    (if duration
        (funcall ((oget jqe "hide" "bind") jqe duration))
        (funcall ((oget jqe "hide" "bind") jqe) )))


(export '(jq::hide))



;;; jQuery.fx.interval
;;; The rate (in milliseconds) at which animations fire.

;;; jQuery.fx.off
;;; Globally disable all animations.

;;; jQuery.speed
;;; Creates an object containing a set of properties ready to be used in the definition of custom animations.

;;; .queue()
;;; Show or manipulate the queue of functions to be executed on the matched elements.


;;; (jq:show jqe)
;;;
;;; Display the matched elements.
;;;
;;; .show()
;;; This signature does not accept any arguments.
;;;
;;; .show( [duration ] [, complete ] )
;;;         duration (default: 400)
;;;         Type: Number or String
;;;         A string or number determining how long the animation will run.
;;;
;;; (jq:show jqe "fast") or "slow"
;;;
(defun show (jqe &optional duration)
    (if duration
        (funcall ((oget jqe "show" "bind") jqe duration))
        (funcall ((oget jqe "show" "bind") jqe) )))

(export '(jq::show))




;;; .slideDown()
;;; Display the matched elements with a sliding motion.

;;; .slideToggle()
;;; Display or hide the matched elements with a sliding motion.

;;; .slideUp()
;;; Hide the matched elements with a sliding motion.

;;; .stop()
;;; Stop the currently-running animation on the matched elements.


;;; (jq:toggle jqe)
;;;
;;; Display or hide the matched elements.
;;;
;;; .toggle( [duration ])
;;;          duration (default: 400)
;;;          Type: Number or String
;;;          A string or number determining how long the animation will run.
;;;
;;; .toggle( display )
;;;          display
;;;          Type: Boolean
;;;          Use true to show the element or false to hide it.

(defun toggle (jqe &optional duration)
    (if duration
        (funcall ((oget jqe "toggle" "bind") jqe duration))
        (funcall ((oget jqe "toggle" "bind") jqe) )))

(export '(jq::toggle))


(in-package :cl-user)


;;; EOF
