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

;;; Category: Traversing
;;; https://api.jquery.com/category/traversing/


;;; .children()
;;; Get the children of each element in the set of matched elements, optionally filtered by a selector.
(export '([jq].fade-to))
(defun [jq].fade-to (jq )
)

;;; .closest()
;;; For each element in the set, get the first element that matches the selector by testing the element itself and traversing up through its ancestors in the DOM tree.

;;; .next()
;;; Get the immediately following sibling of each element in the set of matched elements. If a selector is provided, it retrieves the next sibling only if it matches that selector.

;;; .nextAll()
;;; Get all following siblings of each element in the set of matched elements, optionally filtered by a selector.

;;; .nextUntil()
;;; Get all following siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object passed.

;;; .parent()
;;; Get the parent of each element in the current set of matched elements, optionally filtered by a selector.

;;; .parents()
;;; Get the ancestors of each element in the current set of matched elements, optionally filtered by a selector.

;;; .parentsUntil()
;;; Get the ancestors of each element in the current set of matched elements, up to but not including the element matched by the selector, DOM node, or jQuery object.

;;; .prev()
;;; Get the immediately preceding sibling of each element in the set of matched elements. If a selector is provided, it retrieves the previous sibling only if it matches that selector.

;;; .prevAll()
;;; Get all preceding siblings of each element in the set of matched elements, optionally filtered by a selector, in the reverse document order.

;;; .prevUntil()
;;; Get all preceding siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object.

;;; .siblings()
;;; Get the siblings of each element in the set of matched elements, optionally filtered by a selector.


;;; EOF
