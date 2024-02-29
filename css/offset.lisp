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


;;; These methods get and set CSS-related properties of elements.
;;; See: http://api.jquery.com/category/offset/

;;; .offset()
;;; Get the current coordinates of the first element, or set the coordinates of every element,
;;; in the set of matched elements, relative to the document.
;;; .offset()
;;;     The .offset() method allows us to retrieve the current position of an element
;;;     (specifically its border box, which excludes margins) relative to the document.
;;;     Contrast this with .position(), which retrieves the current position relative
;;;     to the offset parent. When positioning a new element on top of an existing one
;;;     for global manipulation (in particular, for implementing drag-and-drop),
;;;     .offset() is more useful.
;;;     .offset() returns an object containing the properties top and left.
;;; .offset( coordinates )
;;;          coordinates
;;;          Type: PlainObject
;;;          An object containing the properties top and left, which are numbers indicating the
;;;          new top and left coordinates for the elements.
;;; .offset( function )
;;;          function
;;;          Type: Function( Integer index, PlainObject coords ) => PlainObject
;;;          A function to return the coordinates to set. Receives the index of the element
;;;          in the collection as the first argument and the current coordinates as the
;;;          second argument. The function should return an object with the new top and left properties.
;;;  The .offset() setter method allows us to reposition an element. The element's border-box position is specified
;;;  relative to the document. If the element's position style property is currently static, it will be set to
;;;  relative to allow for this repositioning.

;;; (jq:offset jqe (jq:make-coordinates 100 200))
(export '(make-offset))
(defun make-offset (top left) (create "top" top "left" left))

;;; (setq top (jq:get-coordinate-top (jq:[q].offset jqe)))
(export '(get-offset-top))
(defun get-offset-top (obj) (jscl::oget obj "top"))

(export '(get-offset-left))
(defun get-offset-left (obj) (jscl::oget obj "left"))

(export '([q].offset))
(defun [q].offset (jqe &optional (coordinates "")) (@call (jqe "offset") coordinates))

;;; .offsetParent()
;;; Get the closest ancestor element that is positioned.
;;; .offsetParent()
;;; Given a jQuery object that represents a set of DOM elements, the .offsetParent() method allows us
;;; to search through the ancestors of these elements in the DOM tree and construct a new jQuery object
;;; wrapped around the closest positioned ancestor. An element is said to be positioned
;;; if it has a CSS position attribute of relative, absolute, or fixed.
;;; This information is useful for calculating offsets for performing
;;; animations and placing objects on the page.
(export '([q].offset-parent))
(defun [q].offset-parent (jqe) (@call (jqe "offsetParent")))

;;; .position()
;;; Get the current coordinates of the first element in the set of matched elements, relative to the offset parent.
;;; .position()
;;; The .position() method allows us to retrieve the current position of an element (specifically its margin box)
;;; relative to the offset parent (specifically its padding box, which excludes margins and borders).
;;; Contrast this with .offset(), which retrieves the current position relative to the document.
;;; When positioning a new element near another one and within the same
;;; containing DOM element, .position() is the more useful.
;;; Returns an object containing the properties top and left.
(export '([q].position))
(defun [q].position (jqe) (@call (jqe "position")))

;;; .scrollLeft()
;;; Get the current horizontal position of the scroll bar for the first element in the set
;;; of matched elements or set the horizontal position of the scroll bar for every matched element.
(export '([q].scroll-left))
(defun [q].scroll-left (jq) (@call (jq "scrollLeft")))

;;; .scrollTop()
;;; Get the current vertical position of the scroll bar for the first element in the set of matched
;;; elements or set the vertical position of the scroll bar for every matched element.
(export '([q].scroll-top))
(defun [q].scroll-top (jq) (@call (jq "scrollTop"))


(in-package :cl-user)

;;; EOF
