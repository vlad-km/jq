;;; -*- mode:lisp;  coding:utf-8 -*-
#|

            /\___/\
            )     (
           =\     /=                  if this code is not work, i dont know who wrote this code
             )   (                    Copyright © 2017,2018,2022  @vlad-km
            /     \                   2017, Original https://github.com/vlad-km/moren-electron
            )     (                   2022, Code redesign
           /       \                  Electron >= electron@21.2.2
           \       /                  JSCL >= version 0.8.2  
      jgs   \__ __/
               ))
              //
             ((
              \)
|#

;;; Category: Traversing Filterring
;;; https://api.jquery.com/category/traversing/


;;; .eq()
;;; Reduce the set of matched elements to the one at the specified index.
;;;  .eq( index )
;;;  index      Type: Integer
;;;             An integer indicating the 0-based position of the element.
;;;  eq( indexFromEnd )
;;;  indexFromEnd  Type: Integer
;;;                An integer indicating the position of the element, counting backwards
;;;                from the last element in the set.
;;; Given a jQuery object that represents a set of DOM elements, the .eq() method constructs
;;; a new jQuery object from one element within that set. The supplied index identifies the position
;;; of this element in the set.
(export '([q].eq))
(defun [q].eq (jq index) (@call (jq "eq") index))

;;; .even()
;;; Reduce the set of matched elements to the even ones in the set, numbered from zero.
;;;
;;; Given a jQuery object that represents a set of DOM elements, the .even() method constructs a new
;;; jQuery object from the even elements in that set. Counting starts from zero!
(export '([q].even))
(defun [q].even (jq) (@call (jq "even")))

;;; .filter()
;;; Reduce the set of matched elements to those that match the selector or pass the function’s test.
;;; .filter( selector )
;;;   selector   Type: Selector
;;;              A string containing a selector expression to match
;;;              the current set of elements against.
;;; .filter( function )
;;;   function   Type: Function( Integer index, Element element ) => Boolean
;;;              A function used as a test for each element in the set. this is
;;;              the current DOM element.
;;; .filter( elements )
;;;   elements   Type: Element
;;;              One or more DOM elements to match the current set of elements against.
;;; .filter( selection )
;;;   selection  Type: jQuery
;;;              An existing jQuery object to match the current set of elements against.
;;; Given a jQuery object that represents a set of DOM elements, the .filter() method constructs
;;; a new jQuery object from a subset of the matching elements. The supplied selector is tested against
;;; each element; all elements matching the selector will be included in the result.
(export '([q].filter))
(defun [q].filter (jq midagi) (@call (jq "filter") midagi))

;;; .find()
;;; Get the descendants of each element in the current set of matched elements, filtered by a selector, 
;;; jQuery object, or element.
;;; .find( selector )
;;;      selector    Type: Selector
;;;                  A string containing a selector expression to match elements against.
;;; .find( element )
;;;      element     Type: Element or jQuery
;;;                  An element or a jQuery object to match elements against.
;;; Given a jQuery object that represents a set of DOM elements, the .find() method allows us to search
;;; through the descendants of these elements in the DOM tree and construct a new jQuery object from
;;; the matching elements. The .find() and .children() methods are similar, except
;;; that the latter only travels a single level down the DOM tree.
;;; 
;;; The first signature for the .find()method accepts a selector expression of the same
;;; type that we can pass to the $() function. The elements will be filtered by testing whether
;;; they match this selector; all parts of the selector must lie inside of an element on which
;;; .find() is called. The expressions allowed include selectors like > p which will find
;;; all the paragraphs that are children of the elements in the jQuery object.
(export '([q].find))
(defun [q].find (jq midagi) (@call (jq "find") midagi))

;;; .first()
;;; Reduce the set of matched elements to the first in the set.
(export '([q].first))
(defun [q].first (jq) (@call (jq "first")))

;;; .has()
;;; Reduce the set of matched elements to those that have a descendant that matches the selector or DOM element.
;;; .has( selector )
;;;       selector     Type: String
;;;                    A string containing a selector expression to match elements against.
;;; .has( contained )
;;;       contained    Type: Element
;;;                    A DOM element to match elements against.
(export '([q].has))
(defun [q].has (jq) (@call (jq "has")))


;;; .is()
;;; Check the current matched set of elements against a selector, element, or jQuery object and return true 
;;; if at least one of these elements matches the given arguments.
;;; .is( selector )
;;;      selector   Type: Selector
;;;                 A string containing a selector expression to match elements against.
;;; .is( function )
;;;      function   Type: Function( Integer index, Element element ) => Boolean
;;;                 A function used as a test for every element in the set.
;;;                 It accepts two arguments, index, which is the element's index
;;;                 in the jQuery collection, and element, which is the DOM element.
;;;                 Within the function, this refers to the current DOM element.
;;; .is( selection )
;;;      selection  Type: jQuery
;;;                 An existing jQuery object to match the current set of elements against.
;;; .is( elements )
;;;      elements   Type: Element
;;;                 One or more elements to match the current set of elements against.
;;;
;;; Unlike other filtering methods, .is() does not create a new jQuery object. Instead, it allows you
;;; to test the contents of a jQuery object without modification.
;;; This is often useful inside callbacks, such as event handlers.
(export '([q].is))
(defun [q].is (jq midagi) (@call (jq "is") midagi))

;;; .last()
;;; Reduce the set of matched elements to the final one in the set.
(export '([q].last))
(defun [q].last (jq) (@call (jq "last")))

;;; .map()
;;; Pass each element in the current matched set through a function, producing a new jQuery
;;; object containing the return values.
;;; .map( callback )
;;;       callback     Type: Function( Integer index, Element domElement ) => Object
;;;                    A function object that will be invoked for each element
;;;                    in the current set.
;;; If you wish to process a plain array or object, use the jQuery.map() instead.
;;;
;;; As the return value is a jQuery object, which contains an array, it's very common to call .get()
;;; on the result to work with a basic array.
;;;
;;; The .map() method is particularly useful for getting or setting the value of a collection of elements.
(export '([q].map))
(defun [q].map (jq callback) (@call (jq "map") callback))

;;; .not()
;;; Remove elements from the set of matched elements.
;;; .not( selector )
;;;       selector     Type: Selector or Element or Array
;;;                    A string containing a selector expression, a DOM element,
;;;                    or an array of elements to match against the set.
;;; .not( function )
;;;       function     Type: Function( Integer index, Element element ) => Boolean
;;;                    A function used as a test for each element in the set.
;;;                    It accepts two arguments, index, which is the element's index
;;;                    in the jQuery collection, and element, which is the DOM element.
;;;                    Within the function, this refers to the current DOM element.
;;; .not( selection )
;;;       selection    Type: jQuery
;;;                    An existing jQuery object to match the current set of elements against.
;;;
;;; Given a jQuery object that represents a set of DOM elements, the .not() method constructs
;;; a new jQuery object from a subset of the matching elements.
;;; The supplied selector is tested against each element; the elements that don't match the selector
;;; will be included in the result.
(export '([q].not))
(defun [q].not (jq midagi) (@call (jq "not") midagi))

;;; .odd()
;;; Reduce the set of matched elements to the odd ones in the set, numbered from zero.
;;; Given a jQuery object that represents a set of DOM elements, the .odd() method constructs a new jQuery object
;;; from the odd elements in that set. Counting starts from zero!
(export '([q].odd))
(defun [q].odd (jq) (@call (jq "odd")))

;;; .slice()
;;; Reduce the set of match
;;; .slice( start [, end ] )
;;;        start   Type: Integer
;;;                An integer indicating the 0-based position at which the elements
;;;                begin to be selected. If negative, it indicates an offset
;;;                from the end of the set.
;;;        end     Type: Integer
;;;                An integer indicating the 0-based position at which the elements
;;;                stop being selected. If negative, it indicates an offset from the end
;;;                of the set. If omitted, the range continues until the end of the set.
;;;
;;; Given a jQuery object that represents a set of DOM elements, the .slice() method constructs
;;; a new jQuery object containing a subset of the elements specified by the start and, optionally,
;;; end argument. The supplied start index identifies the position of one of the elements in the set;
;;; if end is omitted, all elements after this one will be included in the result.
(export '([q].slice))
(defun [q].slice (jq start &optional (end "")) (@call (jq "slice") start end))



;;; EOF
