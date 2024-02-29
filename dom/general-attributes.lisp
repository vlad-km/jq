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

;;; These methods get and set DOM attributes of elements
;;; See http://api.jquery.com/category/manipulation/general-attributes/


(in-package :jq)


;;; jq:attr
;;; Get the value of an attribute for the first element in the set of matched elements.
;;; (jq:attr attributeName)
;;; => string
;;; Description: Set one or more att
;;; (jq:attr attributeNmae value)
;;; (dom:mount
;;;      dom:*body*
;;;      "The title of the emphasis is:"
;;;      (html:div)
;;;      (html:p :text "Once there was a "
;;;              :mount (html:em :title "huge, gigantic" :text "large")
;;;              :mount " dinosaur..."))
;;;
;;; => <body>
;;;     "The title of the emphasis is:"
;;;     <div></div>
;;;     <p>Once there was a <em title="huge, gigantic">large</em> dinosaur...</p>
;;;    </body>
;;;
;;; (jq:text (jq:$ "div")
;;;          (if (jq:attr (jq:$ "em") "title") "true" "false"))
(export '(jq::[q].attr))
(defun [q].attr (jqe attrname &optional (value "")) (@call (jse "attr") attrname value))

;;; jq:prop
;;; Get the value of a property for the first element in the set of matched elements
;;; or set one or more properties for every matched element.
;;; (jq:prop propertyName) string
;;; (jq:prop propertyName value) string string
;;; (jq:prop propertyName fn) string fn
;;; (jq:prop propertyes) object
;;; See: http://api.jquery.com/prop/#prop-properties
;;;
;;; (dom:mount dom:*body*
;;;           (html:input :id "check1"
;;;                       :type "checkbox"
;;;                       :checked "checked")
;;;           (html:label :for "checked"
;;;                       :text "Check me")
;;;           (html:p))
;;; =>
;;;    <input id="check1" type="checkbox" checked="checked">
;;;    <label for="check1">Check me</label>
;;;    <p></p>
;;;
;;;( "input" ).change(function() {
;;;  var $input = $( this );
;;;  $( "p" ).html(
;;;    ".attr( \"checked\" ): <b>" + $input.attr( "checked" ) + "</b><br>" +
;;;    ".prop( \"checked\" ): <b>" + $input.prop( "checked" ) + "</b><br>" +
;;;    ".is( \":checked\" ): <b>" + $input.is( ":checked" ) + "</b>" );
;;; }).change();
;;;
;;; (setq *input (jq:$ "input"))
;;; (jq:change
;;;      (jq:change *input
;;;            (lambda ()
;;;                (jq:html (jq:$ "p")
;;;                         (concat ".attr( \"checked\" ): <b>" (jq:attr *input "checked") "</b><br>"
;;;                                 ".prop( \"checked\" ): <b>" + (jq:prop *input "checked" )  "</b><br>"
;;;                                 ".is( \":checked\" ): <b>" + (jq:is *input ":checked" )  "</b>" )))))
;;;
(export '(jq::[q].prop))
(defun [q].prop (jqe property &optional (midagi "")) (@call (jse "attr") property midagi))

;;; jq:removeAttr
;;; Remove an attribute from each element in the set of matched elements
;;; (jq:remove-attr jqe attr-name)
(export '(jq::[q].remove-attr))
(defun [q].remove-attr (jqe attr-name) (@call (jse "removeAttr") attr-name))

;;; jq:removeProp
;;; Remove a property for the set of matched elements
;;; (jq:remove-prop jqe prop-name)
(export '(jq::[q].remove-prop))
(defun [q].remove-prop (jqe prop-name) (@call (jse "removeProp") prop-name))

;;; jqe:val
;;; Get the current value of the first element in the set of matched elements
;;; or set the value of every matched element.
;;; See http://api.jquery.com/val/
;;; (jq:val jqe)
;;; (jq:val jqe value)
;;; (jq:val jqe function)
(export '(jq::[q].val))
(defun [q].val (jqe &optional (midagi "")) (@call (jse "removeProp") midagi))

(in-package :cl-user)

;;; EOF
