;;; -*- mode:lisp;  coding:utf-8 -*-
#|

            /\___/\
            )     (
           =\     /=                  if this code is not work, i dont know who wrote this code
             )   (                    Copyright © 2017,2024  @vlad-km
            /     \                   2017, Original https://github.com/vlad-km/moren-electron
            )     (                   2024, Code redesign
           /       \                  Electron >= electron@21.2.2
           \       /                  JSCL >= version 0.8.2  
      jgs   \__ __/
               ))
              //
             ((
              \)
|#

(in-package :jq)

;;; .animate()
;;; Perform a custom animation of a set of CSS properties.

;;; .animate( properties [, duration ] [, easing ] [, complete ] )
;;;           properties    Type: PlainObject
;;;                         An object of CSS properties and values that the animation will
;;;                         move toward.
;;;           duration      (default: 400)
;;;                         Type: Number or String
;;;                         A string or number determining how long the animation will run.
;;;           easing        (default: swing)
;;;                         Type: String
;;;                         A string indicating which easing function to use for the transition.
;;;           complete      Type: Function()
;;;                         A function to call once the animation is complete, called once
;;;                         per matched element.
;;; .animate( properties, options )
;;;           properties    Type: PlainObject
;;;                         An object of CSS properties and values that the animation will move toward.
;;;           options       Type: PlainObject
;;;                         A map of additional options to pass to the method:
;;;                              duration (default: 400) see abowe
;;;                              easing (default: swing) see abowe
;;;                              queue (default: true)
;;;                                     Type: Boolean or String
;;;                                     A Boolean indicating whether to place the animation in the effects
;;;                                     queue. If false, the animation will begin immediately.
;;;                                     the queue option can also accept a string, in which case the
;;;                                     animation is added to the queue represented by that string.
;;;                                     When a custom queue name is used the animation does not
;;;                                     automatically start, you must call .dequeue("queuename")
;;;                                     to start it.
;;;                             specialEasing
;;;                                     Type: PlainObject
;;;                                     An object containing one or more of the CSS properties defined
;;;                                     by the properties argument and their corresponding easing functions
;;;                             step
;;;                                     Type: Function( Number now, Tween tween )
;;;                                     A function to be called for each animated property of each animated
;;;                                     element. This function provides an opportunity to modify the
;;;                                     Tween object to change the value of the property before it is set.
;;;                              progress
;;;                                     Type: Function( Promise animation, Number progress, Number remainingMs )
;;;                                     A function to be called after each step of the animation, only
;;;                                     once per animated element regardless of the number of
;;;                                     animated properties. (version added: 1.8)
;;;                              complete
;;;                                     Type: Function()
;;;                                     A function that is called once the animation on an element is complete.
;;;                              start
;;;                                     Type: Function( Promise animation )
;;;                                     A function to call when the animation on an element begins
;;;                              done
;;;                                     Type: Function( Promise animation, Boolean jumpedToEnd )
;;;                                     A function to be called when the animation on an element
;;;                                     completes (its Promise object is resolved)
;;;                              fail
;;;                                     Type: Function( Promise animation, Boolean jumpedToEnd )
;;;                                     A function to be called when the animation on an element
;;;                                     fails to complete (its Promise object is rejected)
;;;                              always
;;;                                      Type: Function( Promise animation, Boolean jumpedToEnd )
;;;                                      A function to be called when the animation on an element
;;;                                      completes or stops without completing
;;;                                      (its Promise object is either resolved or rejected)
;;;
;;; The .animate() method allows us to create animation effects on any numeric CSS property.
;;; The only required parameter is a plain object of CSS properties. This object is similar to the one
;;; that can be sent to the .css() method, except that the range of properties is more restrictive.
;;;
;;; Animation Properties and Values
;;;
;;; All animated properties should be animated to a single numeric value, except as noted below
;;; most properties that are non-numeric cannot be animated using basic jQuery functionality
;;; (For example, width, height, or left can be animated but background-color cannot be, unless
;;; the jQuery.Color plugin is used).
;;; Property values are treated as a number of pixels unless otherwise specified.
;;; The units em and % can be specified where applicable.
;;;
;;; In addition to style properties, some non-style properties such as scrollTop and scrollLeft,
;;; as well as custom properties, can be animated.
;;;
;;; Shorthand CSS properties (e.g. font, background, border) are not fully supported. For example,
;;; if you want to animate the rendered border width, at least a border style and border width
;;; other than "auto" must be set in advance. Or, if you want to animate font size, you would
;;; use fontSize or the CSS equivalent 'font-size' rather than simply 'font'.
;;;
;;; In addition to numeric values, each property can take the strings 'show', 'hide', and 'toggle'.
;;; These shortcuts allow for custom hiding and showing animations that take into account the display
;;; type of the element. In order to use jQuery's built-in toggle state tracking,
;;; the 'toggle' keyword must be consistently given as the value of the property being animated.
;;;
;;; Animated properties can also be relative. If a value is supplied with a leading += or -= sequence of
;;; characters, then the target value is computed by adding or subtracting the given number
;;; from the current value of the property.
;;;
;;; Note: Unlike shorthand animation methods such as .slideDown() and .fadeIn(), the .animate()
;;;       method does not make hidden elements visible as part of the effect. For example,
;;;       given $( "someElement" ).hide().animate({height: "20px"}, 500), the animation will run,
;;;       but the element will remain hidden.
;;;
;;; Duration
;;;
;;; Durations are given in milliseconds; higher values indicate slower animations, not faster ones.
;;; The default duration is 400 milliseconds. The strings 'fast' and 'slow' can be supplied
;;; to indicate durations of 200 and 600 milliseconds, respectively.
;;;
;;; Callback Functions
;;;
;;; If supplied, the start, step, progress, complete, done, fail, and always callbacks are called
;;; on a per-element basis; this is set to the DOM element being animated. If no elements are in the set,
;;; no callbacks are called. If multiple elements are animated, the callback is executed once
;;; per matched element, not once for the animation as a whole. Use the .promise() method to obtain
;;; a promise to which you can attach callbacks that fire once for an animated set of any size,
;;; including zero elements.
(export '([q].animate))
(defun [q].animate (jq props &rest others)
  (let ((f (@call (js "animate" "bind") jq props)))
    (apply f others)))


;;; EOF
