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


;;; Effects
;;; See: http://api.jquery.com/category/effects/

;;; .clearQueue()
;;; Remove from the queue all items that have not yet been run.
;;; .clearQueue( [queueName ] )
;;;     queueName     Type: String
;;;                   A string containing the name of the queue. Defaults to fx,
;;;                   the standard effects queue.
;;;
;;; When the .clearQueue() method is called, all functions on the queue that have not been
;;; executed are removed from the queue. When used without an argument, .clearQueue() removes
;;; the remaining functions from fx, the standard effects queue. In this way it is similar to .stop(true).
;;; However, while the .stop() method is meant to be used only with animations, .clearQueue()
;;; can also be used to remove any function that has been added to a generic jQuery queue
;;; with the .queue() method.
(export '([q].clear-queue))
(defun [q].clear-queue (jq &optional (qname "fx")) (@call (jq "clearQueue") qname))

;;; .delay()
;;; Set a timer to delay execution of subsequent items in the queue.
;;; .delay( duration [, queueName ] )
;;;    duration     Type: Integer
;;;                 An integer indicating the number of milliseconds to delay execution
;;;                 of the next item in the queue.
;;;    queueName    Type: String
;;;                 A string containing the name of the queue. Defaults to fx,
;;;                 the standard effects queue.
;;;
;;; Added to jQuery in version 1.4, the .delay() method allows us to delay the execution of functions
;;; that follow it in the queue. It can be used with the standard effects queue or with a custom queue.
;;; Only subsequent events in a queue are delayed; for example this will not delay the no-arguments
;;; forms of .show() or .hide() which do not use the effects queue.
;;;
;;; Durations are given in milliseconds; higher values indicate slower animations, not faster ones.
;;; The strings 'fast' and 'slow' can be supplied to indicate durations of 200 and 600 milliseconds,
;;; respectively.
(export '([q].delay))
(defun [q].delay (jq duration &optional (qname "fx")) (@call (jq "delay") duration qname))

;;; .dequeue()
;;; Execute the next function on the queue for the matched elements.
;;; .dequeue( [queueName ] )
;;;      queueName   Type: String
;;;                  A string containing the name of the queue.
;;;                  Defaults to fx, the standard effects queue.
;;;
;;; When .dequeue() is called, the next function on the queue is removed from the queue,
;;; and then executed. This function should in turn (directly or indirectly) cause .dequeue()
;;; to be called, so that the sequence can continue.
(export '([q].dequeue))
(defun [q].dequeue (jq &optional (qname "fx")) (@call (jq "dequeue") qname))

;;; .finish()    v.1.9.*
;;; Stop the currently-running animation, remove all queued animations, and complete
;;; all animations for the matched elements.
;;; (export '(jq::[q].finish))
;;; (defun [q].finish (jqe) (@call (jqe "finish")))


;;; (jq:hide jqe)
;;; Hide the matched elements.
;;; .hide()
;;; This signature does not accept any arguments.
;;; .hide( [duration ] )
;;;        duration (default: 400)
;;;        Type: Number or String
;;;        A string or number determining how long the animation will run.
;;;        fast | slow
(export '(jq::[q].hide))
(defun [q].hide (jqe &optional( duration "")) (@call (jqe "hide") duration))

;;; jQuery.fx.interval
;;; The rate (in milliseconds) at which animations fire.
(export '(jq::[q].fx.interval))
(defun  [q].fx.interval () #j:jQuery:fx:interval)

;;; jQuery.fx.off
;;; Globally disable all animations.

;;; jQuery.speed
;;; Creates an object containing a set of properties ready to be used in the definition of custom animations.
;;; jQuery.speed( [duration ] [, settings ] )
;;; duration  (default: 400)
;;;           Type: Number or String
;;;           A string or number determining how long the animation will run.
;;; settings  Type: PlainObject
;;;           easing    (default: swing)
;;;                     Type: String
;;;                     A string indicating which easing function to use for the transition.
;;;           complete  Type: Function()
;;;                     A function to call once the animation is complete.
;;;
;;; jQuery.speed( [duration ] [, easing ] [, complete ] )
;;;          duration        (default: 400)
;;;                          Type: Number or String
;;;                          A string or number determining how long the animation will run.
;;;          easing (default: swing)
;;;                 Type: String
;;;                 A string indicating which easing function to use for the transition.
;;;          complete
;;;                 Type: Function()
;;;                 A function to call once the animation is complete, called once
;;;                 per matched element.
;;;
;;; jQuery.speed( settings )
;;;     settings   Type: PlainObject
;;;                duration  (default: 400)
;;;                          Type: Number or String
;;;                          A string or number determining how long the animation will run.
;;;                easing (default: swing)
;;;                          Type: String
;;;                          A string indicating which easing function to use for the transition.
;;;               complete
;;;                          Type: Function()
;;;                          A function to call once the animation is complete.
;;;
;;; The $.speed() method provides a way to define properties, such as duration, easing,
;;; and queue, to use in a custom animation. By using it, you don't have to implement the logic
;;; that deals with default values and optional parameters.
;;;
;;; This method is meant for plugin developers who are creating new animation methods.
;;; Letting $.speed() do all the parameter hockey and normalization for you, rather than
;;; duplicating the logic yourself, makes your work simpler. An example of use can be found
;;; in the animated form of .addClass() of jQuery UI.
(export '(jq::[q].speed))
;;;  getter ([q].speed) => plainObject
;;;  setter ([q].speed ...args)
(defun [q].speed (&rest midagi)
  (let ((f #j:jQuery:speed))
    (apply f midagi)))

;;; .queue()
;;; Show or manipulate the queue of functions to be executed on the matched elements.


;;; (jq:show jqe)
;;; Display the matched elements.
;;; .show()
;;; This signature does not accept any arguments.
;;; .show( [duration ] [, complete ] )
;;;         duration (default: 400)
;;;         Type: Number or String
;;;         A string or number determining how long the animation will run.
;;;
;;; (jq:show jqe "fast") or "slow"
;;;
(export '(jq::[q].show))
(defun [q].show (jqe &optional (duration "")) (@call (jqe "show") dureation))

;;; .stop()
;;; Stop the currently-running animation on the matched elements.

;;; (jq:toggle jqe)
;;; Display or hide the matched elements.
;;;
;;; .toggle( [duration ])
;;;          duration (default: 400)
;;;          Type: Number or String
;;;          A string or number determining how long the animation will run.
;;; .toggle( display )
;;;          display
;;;          Type: Boolean
;;;          Use true to show the element or false to hide it.
(export '(jq::[q].toggle))
(defun [q].toggle (jqe &optional (duration "")) (@call (jqe "toggle") duration))


(in-package :cl-user)


;;; EOF
