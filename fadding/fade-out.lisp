;;; -*- mode:lisp;  coding:utf-8 -*-
#|

            /\___/\
            )     (
           =\     /=                  if this code is not work, i dont know who wrote this code
             )   (                    Copyright © 2017,2018,2024  @vlad-km
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

;;;  .fadeOut()
;;;  Hide the matched elements by fading them to transparent.
;;;  https://api.jquery.com/fadeOut/


;;; .fadeOut( [duration ] [, complete ] )
;;;     duration (default: 400)  Type: Number or String
;;;                              A string or number determining how long the animation will run.
;;;     complete                 Type: Function()
;;;                              A function to call once the animation is complete, called once per matched element.



;;; .fadeOut( options )
;;;     options                      Type: PlainObject
;;;                                  A map of additional options to pass to the method.
;;;     duration (default: 400)      Type: Number or String
;;;                                  A string or number determining how long the animation will run.
;;;     easing (default: swing)      Type: String
;;;                                  A string indicating which easing function to use for the transition.
;;;     queue (default: true)        Type: Boolean or String
;;;                                  A Boolean indicating whether to place the animation in the effects queue. 
;;;                                  If false, the animation will begin immediately. 
;;;                                  As of jQuery 1.7, the queue option can also accept a string, 
;;;                                  in which case the animation is added to the queue represented by that string. 
;;;                                  When a custom queue name is used the animation does not automatically start 
;;;                                  you must call .dequeue("queuename") to start it.
;;;     specialEasing                Type: PlainObject
;;;                                  An object containing one or more of the CSS properties defined by the properties 
;;;                                  argument and their corresponding easing functions. (version added: 1.4)
;;;     step                         Type: Function( Number now, Tween tween )
;;;                                  A function to be called for each animated property of each animated element. 
;;;                                  This function provides an opportunity to modify the Tween object to change 
;;;                                  the value of the property before it is set.
;;;     progress                     Type: Function( Promise animation, Number progress, Number remainingMs )
;;;                                  A function to be called after each step of the animation, only once 
;;;                                  per animated element regardless of the number of animated properties. 
;;;                                  (version added: 1.8)
;;;     complete                     Type: Function()
;;;                                  A function that is called once the animation on an element is complete.
;;;     start                        Type: Function( Promise animation )
;;;                                  A function to call when the animation on an element begins. 
;;;                                  (version added: 1.8)
;;;     done                         Type: Function( Promise animation, Boolean jumpedToEnd )
;;;                                  A function to be called when the animation on an element completes 
;;;                                  (its Promise object is resolved). (version added: 1.8)
;;;     fail                         Type: Function( Promise animation, Boolean jumpedToEnd )
;;;                                  A function to be called when the animation on an element fails to complete 
;;;                                  (its Promise object is rejected). (version added: 1.8)
;;;     always                       Type: Function( Promise animation, Boolean jumpedToEnd )
;;;                                  A function to be called when the animation on an element completes or stops 
;;;                                  without completing (its Promise object is either resolved or rejected). 
;;;                                  (version added: 1.8)


;;;  .fadeOut( [duration ] [, easing ] [, complete ] )
;;;   duration (default: 400)       Type: Number or String
;;;                                 A string or number determining how long the animation will run.
;;;   easing (default: swing)       Type: String
;;;                                 A string indicating which easing function to use for the transition.
;;;   complete                      Type: Function()
;;;                                 A function to call once the animation is complete, 
;;;                                 called once per matched element.


;;;  The .fadeOut() method animates the opacity of the matched elements. Once the opacity reaches 0, 
;;;  the display style property is set to none, 
;;;  so the element no longer affects the layout of the page.
;;;  Durations are given in milliseconds; higher values indicate slower animations, not faster ones. 
;;;  The strings 'fast' and 'slow' can be supplied to indicate durations of 200 
;;;  and 600 milliseconds, respectively. 
;;;  If any other string is supplied, or if the duration parameter is omitted, 
;;;  the default duration of 400 milliseconds is used.




;;; EOF
