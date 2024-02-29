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

;;; Category: Traversing Miscellaneous Traversing
;;; https://api.jquery.com/category/traversing/


;;; .add()
;;; Create a new jQuery object with elements added to the set of matched elements.
;;; .add( selector )
;;;       selector       Type: Selector
;;;                      A string representing a selector expression to find additional
;;;                      elements to add to the set of matched elements.
;;; .add( elements )     
;;;       elements       Type: Element
;;;                      One or more elements to add to the set of matched elements.
;;; .add( html )
;;;       html           Type: htmlString
;;;                      An HTML fragment to add to the set of matched elements.
;;; .add( selection )
;;;       selection      Type: jQuery
;;;                      An existing jQuery object to add to the set of matched elements.
;;; .add( selector, context )
;;;       selector    Type: Selector
;;;                   A string representing a selector expression to find additional
;;;                   elements to add to the set of matched elements.
;;;       context     Type: Element
;;;                   The point in the document at which the selector should begin matching
;;;                   similar to the context argument of the $(selector, context) method.
;;;
;;; Given a jQuery object that represents a set of DOM elements, the .add() method constructs
;;; a new jQuery object from the union of those elements and the ones passed into the method.
;;; The argument to .add() can be pretty much anything that $() accepts, including a jQuery selector
;;; expression, references to DOM elements, or an HTML snippet.
;;;
;;; Do not assume that this method appends the elements to the existing collection in the order
;;; they are passed to the .add() method. When all elements are members of the same document, the resulting
;;; collection from .add() will be sorted in document order that is, in order of each element's appearance
;;; in the document. If the collection consists of elements from different documents or ones not in any document,
;;; the sort order is undefined. To create a jQuery object with elements in a well-defined order and
;;; without sorting overhead, use the $(array_of_DOM_elements) signature.
(export '([q].add))
(defun [jq].add (jq something &optional (midagi "")) (@call (jq "add") something midagi))

;;; .addBack()
;;; Add the previous set of elements on the stack to the current set, optionally filtered by a selector.
;;;
;;; As described in the discussion for .end(), jQuery objects maintain an internal stack that keeps
;;; track of changes to the matched set of elements. When one of the DOM traversal methods is called,
;;; the new set of elements is pushed onto the stack. If the previous set of elements is desired as well,
;;; .addBack() can help.
(export '([q].add-back))
(defun [jq].add-back (jq) (@call (jq "addBack") ))

;;; .contents()
;;; Get the children of each element in the set of matched elements, including text and comment nodes.
;;;
;;; Given a jQuery object that represents a set of DOM elements, the .contents() method
;;; allows us to search through the immediate children of these elements in the DOM tree and construct
;;; a new jQuery object from the matching elements. The .contents() and .children() methods are similar,
;;; except that the former includes text nodes and comment nodes as well as HTML elements in the resulting
;;; jQuery object. Please note that most jQuery operations don't support text nodes and comment nodes.
;;; The few that do will have an explicit note on their API documentation page.
;;;
;;; The .contents() method can also be used to get the content document of an iframe, if the
;;; iframe is on the same domain as the main page.
;;;     $( ".container" )
;;;         .contents()
;;;         .filter(function() {
;;;         return this.nodeType === 3;
;;;          })
;;;         .wrap( "<p></p>" )
;;;         .end()
;;;         .filter( "br" )
;;;         .remove();
(export '([q].contents))
(defun [jq].contents (jq) (@call (jq "contents") ))

;;; .each()
;;; Iterate over a jQuery object, executing a function for each matched element.
;;;
;;; .each( function )
;;;        function        Type: Function( Integer index, Element element )
;;;                        A function to execute for each matched element.
;;;
;;; The .each() method is designed to make DOM looping constructs concise and less error-prone.
;;; When called it iterates over the DOM elements that are part of the jQuery object. Each time the callback runs,
;;; it is passed the current loop iteration, beginning from 0. More importantly, the callback is fired
;;; in the context of the current DOM element, so the keyword this refers to the element.
(export '([q].each))
(defun [jq].each (jq function) (@call (jq "each") function))


;;; .end()
;;; End the most recent filtering operation in the current chain and return the set of matched elements to its previous state.
;;;
;;; Most of jQuery's DOM traversal methods operate on a jQuery object instance and produce a new one,
;;; matching a different set of DOM elements. When this happens, it is as if the new set of elements
;;; is pushed onto a stack that is maintained inside the object. Each successive filtering method pushes a new
;;; element set onto the stack. If we need an older element set, we can use end() to pop the sets back
;;; off of the stack.
(export '([q].end))
(defun [jq].end (jq ) (@call (jq "end")))

;;; EOF
