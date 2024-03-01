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

(export '([q].off))
(defun [q].off (jq &rest midagi)
  (let ((f (@call (jq "off" "bind") jq)))
    (apply f midagi)))

;;; .on()
;;; Attach an event handler function for one or more events to the selected elements.
;;;
;;;
(export '([q].on))
(defun [q].on (jse event handler) (@call (jq "on") handler ))

;;; .one()
;;; Attach a handler to an event for the elements. The handler is executed at most once per element per event type.
(export '([q].one))
(defun [q].one (jq event handler) (@call (jq "one") event handler))

;;; .trigger()
;;; Execute all handlers and behaviors attached to the matched elements for the given event type.



;;; .triggerHandler()
;;; Execute all handlers attached to an element for an event.


(in-package :cl-user)

;;; EOF
