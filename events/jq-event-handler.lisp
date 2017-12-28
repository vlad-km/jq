;;; -*- mode:lisp; coding:utf-8  -*-

;;;
;;; This file is part of the MOREN environment
;;; JQ - JSCL wrapper for JQuery library
;;; Copyright © 2017 Vladimir Mezentsev
;;;

(in-package :jq)

;;;
;;; Events handler attachment
;;;
;;; See: http://api.jquery.com/category/events/event-handler-attachment/
;;;


;;; .off()
;;; Remove an event handler.
;;;
;;; .off( events [, selector ] [, handler ] )
;;;      events
;;;      Type: String
;;;      One or more space-separated event types and optional namespaces, or just namespaces,
;;;      such as "click", "keydown.myPlugin", or ".myPlugin".
;;;
;;;      selector
;;;      Type: String
;;;      A selector which should match the one originally passed to .on() when attaching event handlers.
;;;
;;;      handler
;;;      Type: Function( Event eventObject )
;;;      A handler function previously attached for the event(s), or the special value false.
;;;
;;;      events
;;;      Type: PlainObject
;;;      An object where the string keys represent one or more space-separated event types and
;;;      optional namespaces, and the values represent handler functions previously attached for the event(s).
;;;
;;;      selector
;;;      Type: String
;;;      A selector which should match the one originally passed to .on() when attaching event handlers.
;;;
;;;      event
;;;      Type: Event
;;;      A jQuery.Event object.
;;;
;;;      .off()
;;;      This signature does not accept any arguments.
;;;      The .off() method removes event handlers that were attached with .on(). See the discussion of
;;;      delegated and directly bound events on that page for more information. Calling .off() with no
;;;      arguments removes all handlers attached to the elements. Specific event handlers can be removed on
;;;      elements by providing combinations of event names, namespaces, selectors, or handler function names.
;;;      When multiple filtering arguments are given, all of the arguments provided must match for
;;;      the event handler to be removed.


(defun off (jse &optional events selector handler)
    (if handler
        (funcall ((oget jse "off" "bind") jse events selector handler))
        (if selector
            (funcall ((oget jse "off" "bind") jse events selector))
            (if events
                (funcall ((oget jse "off" "bind") jse events))
                (funcall ((oget jse "off" "bind") jse))))))

(export '(jq::off))



;;; .on()
;;; Attach an event handler function for one or more events to the selected elements.
;;;
;;;
(defun on (jse event handler)
    (funcall ((oget jse "on" "bind") jse event handler)))

(export '(jq::on))


;;; .one()
;;; Attach a handler to an event for the elements. The handler is executed at most once per element per event type.
(defun one (jse event handler)
    (funcall ((oget jse "one" "bind") jse event handler)))

(export '(jq::one))


;;; .trigger()
;;; Execute all handlers and behaviors attached to the matched elements for the given event type.



;;; .triggerHandler()
;;; Execute all handlers attached to an element for an event.


(in-package :cl-user)

;;; EOF
