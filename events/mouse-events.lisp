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

;;;
;;; Events mouse
;;;
;;;See: http://api.jquery.com/category/events/mouse-events/
;;;


;;; .click()
;;; Bind an event handler to the “click” JavaScript event, or trigger that event on an element.
;;;
;;; This method is a shortcut for .on( "click", handler ) in the first two variations,
;;; and .trigger( "click" )


;;; .contextmenu()
;;; Bind an event handler to the “contextmenu” JavaScript event, or trigger that event on an element.
;;;
;;; This method is a shortcut for .on( "contextmenu", handler ) in the first two variations,
;;; and .trigger( "contextmenu" )



;;; .dblclick()
;;; Bind an event handler to the “dblclick” JavaScript event, or trigger that event on an element.
;;;
;;; This method is a shortcut for .on( "dblclick", handler ) in the first two variations,
;;; and .trigger( "dblclick" ) i



;;; .hover()
;;; Bind one or two handlers to the matched elements, to be executed when the mouse pointer enters and leaves the elements.
;;;
;;; .hover( handlerIn, handlerOut )
;;;
;;;      handlerIn
;;;      Type: Function( Event eventObject )
;;;      A function to execute when the mouse pointer enters the element.
;;;
;;;      handlerOut
;;;      Type: Function( Event eventObject )
;;;      A function to execute when the mouse pointer leaves the element.
;;;
;;;  The .hover() method binds handlers for both mouseenter and mouseleave events. You can use
;;;  it to simply apply behavior to an element during the time the mouse is within the element.
;;;
;;;  Calling $( selector ).hover( handlerIn, handlerOut ) is shorthand for:
;;;  $( selector ).mouseenter( handlerIn ).mouseleave( handlerOut );

(defun hover (jse fin fout)
    (funcall ((oget jse "hover" "bind") jse fin fout)))

(export '(jq::hover))



;;; .mousedown()
;;; Bind an event handler to the “mousedown” JavaScript event, or trigger that event on an element.
;;;
;;; This method is a shortcut for .on( "mousedown", handler) in the first variation, and .trigger( "mousedown" )
;;;

;;; .mouseenter()
;;; Bind an event handler to be fired when the mouse enters an element, or trigger that handler on an element.


;;; .mouseleave()
;;; Bind an event handler to be fired when the mouse leaves an element, or trigger that handler on an element.


;;; .mousemove()
;;; Bind an event handler to the “mousemove” JavaScript event, or trigger that event on an element.


;;; .mouseout()
;;; Bind an event handler to the “mouseout” JavaScript event, or trigger that event on an element.

;;; .mouseover()
;;; Bind an event handler to the “mouseover” JavaScript event, or trigger that event on an element.


;;; .mouseup()
;;; Bind an event handler to the “mouseup” JavaScript event, or trigger that event on an element.

;;; .toggle()
;;; Bind two or more handlers to the matched elements, to be executed on alternate clicks.


(in-package :cl-user)


;;; EOF
