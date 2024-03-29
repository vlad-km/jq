# JQ package 

Package **JQ** - CommonLisp JSCL (Moren edition) wrap for JQuery library.


# Release


## Names convention

In the release all files have the following names:

```
<package>:<prefix><function-ename>
<package>  ::= jq
<prefix>   ::= [q] | [qui]
<function-name> ::=  {dot} function-name as used at JQuery
```

So: JS-function _`.next`_ this is a lisp name  _`(jq:[q].next)`_ or _`([q].next)`_

#### For example 
Next function from demo https://jqueryui.com/droppable/#photo-manager

```js
function recycleImage( $item ) {
			$item.fadeOut(function() {
				$item
					.find( "a.ui-icon-refresh" )
						.remove()
					.end()
					.css( "width", "96px")
					.append( trash_icon )
					.find( "img" )
						.css( "height", "72px" )
					.end()
					.appendTo( $gallery )
					.fadeIn();
			});
		}
```

can be implemented as

```lisp
(defun recycle-image ($item)
  (let* ((fade-out-fn
          (lambda ()
            (funcall
             (chain (rcurry #'[q].find "a.ui-icon-refresh")
                        #'[q].end
                        (rcurry #'[q].css  "height" "72px")
                        (rcurry #'[q].append trash_icon)
                        (rcurry #'[q].find "img")
                        (rcurry #'[q].css "height" "72px")
                        #'[q].end
                        (rcurry #'[q].append-to $gallery)
                        #'[q].fade-in)
             $item))))
    (jq:fade-out fade-out-fn)))
```

## Disclaim
Сompiles only in the environment _`JSCL (Moren edition) Electron`_

JQuiery version _`1.8.3`_

All Function comments are from https://api.jquery.com & https://api.jqueryui.com/


## Category: Class Attribute
> Location: 


#### .addClass() [+]
Adds the specified class(es) to each element in the set of matched elements.

#### .hasClass() [+]
Determine whether any of the matched elements are assigned the given class.

#### .removeClass() [+]
Remove a single class, multiple classes, or all classes from each element in the set of matched elements.

#### .toggleClass() [+]
Add or remove one or more classes from each element in the set of matched elements, depending on either the class’s presence or the value of the state argument.


## Category: Dimensions
> Location: 


#### .height() [+]
Get the current computed height for the first element in the set of matched elements or set the height of every matched element.

#### .innerHeight() [+]
Get the current computed inner height (including padding but not border) for the first element in the set of matched elements or set the inner height of every matched element.

#### .innerWidth() [+]
Get the current computed inner width (including padding but not border) for the first element in the set of matched elements or set the inner width of every matched element.

#### .outerHeight() [+]
Get the current computed outer height (including padding, border, and optionally margin) for the first element in the set of matched elements or set the outer height of every matched element.

#### .outerWidth() [+]
Get the current computed outer width (including padding, border, and optionally margin) for the first element in the set of matched elements or set the outer width of every matched element.

#### .width() [+]
Get the current computed width for the first element in the set of matched elements or set the width of every matched element.



## Category: DOM Insertion, Around
> Location: 


#### .unwrap() [+]
Remove the parents of the set of matched elements from the DOM, leaving the matched elements in their place.

#### .wrap() [+]
Wrap an HTML structure around each element in the set of matched elements.

#### .wrapAll() [+]
Wrap an HTML structure around all elements in the set of matched elements.

#### .wrapInner() [+]
Wrap an HTML structure around the content of each element in the set of matched elements.


## Category: DOM Insertion, Inside
> Location: 


#### .append() [+]
Insert content, specified by the parameter, to the end of each element in the set of matched elements.

#### .appendTo() [+]
Insert every element in the set of matched elements to the end of the target.

#### .html() [+]
Get the HTML contents of the first element in the set of matched elements or set the HTML contents of every matched element.

#### .prepend() [+]
Insert content, specified by the parameter, to the beginning of each element in the set of matched elements.

#### .prependTo() [+]
Insert every element in the set of matched elements to the beginning of the target.

#### .text() [+]
Get the combined text contents of each element in the set of matched elements, including their descendants, or set the text contents of the matched elements.
_________________________________

## Category: DOM Insertion, Outside
> Location: 

#### .after() [+]
Insert content, specified by the parameter, after each element in the set of matched elements.

#### .before() [+]
Insert content, specified by the parameter, before each element in the set of matched elements.

#### .insertAfter() [+]
Insert every element in the set of matched elements after the target.

#### .insertBefore() [+]
Insert every element in the set of matched elements before the target.
_________________________________

## Category: DOM Removal
> Location: 

#### .detach() [+]
Remove the set of matched elements from the DOM.

#### .empty() [+]
Remove all child nodes of the set of matched elements from the DOM.

#### .remove() [+]
Remove the set of matched elements from the DOM.
_________________________________

## Category: DOM Replacement
> Location: 

#### .replaceAll() [+]
Replace each target element with the set of matched elements.

#### .replaceWith() [+]
Replace each element in the set of matched elements with the provided new content and return the set of elements that was removed.

_________________________________


## Category: General Attributes
> Location: 


#### .attr() [+]
Get the value of an attribute for the first element in the set of matched elements or set one or more attributes for every matched element.

#### .prop() [+]
Get the value of a property for the first element in the set of matched elements or set one or more properties for every matched element.

#### .removeAttr() [+]
Remove an attribute from each element in the set of matched elements.

#### .removeProp() [+]
Remove a property for the set of matched elements.

#### .val() [+]
Get the current value of the first element in the set of matched elements or set the value of every matched element

_________________________________


## Category: Filtering
> Location: 

#### .eq() [+]
Reduce the set of matched elements to the one at the specified index.

.even() [+]
Reduce the set of matched elements to the even ones in the set, numbered from zero.

#### .filter() [+]
Reduce the set of matched elements to those that match the selector or pass the function’s test.

#### .first() [+]
Reduce the set of matched elements to the first in the set.

#### .has() [+]
Reduce the set of matched elements to those that have a descendant that matches the selector or DOM element.

#### .is() [+]
Check the current matched set of elements against a selector, element, or jQuery object and return true if at least one of these elements matches the given arguments.

#### .last() [+]
Reduce the set of matched elements to the final one in the set.

#### .map() [+]
Pass each element in the current matched set through a function, producing a new jQuery object containing the return values.

#### .not() [+]
Remove elements from the set of matched elements.

#### .odd() [+]
Reduce the set of matched elements to the odd ones in the set, numbered from zero.

#### .slice() [+]
Reduce the set of matched elements to a subset specified by a range of indices.

_________________________________


## Category: Miscellaneous Traversing
> Location: 


#### .add() [+]
Create a new jQuery object with elements added to the set of matched elements.

#### .addBack() [+]
Add the previous set of elements on the stack to the current set, optionally filtered by a selector.

#### .contents() [+]
Get the children of each element in the set of matched elements, including text and comment nodes.

#### .end() [+]
End the most recent filtering operation in the current chain and return the set of matched elements to its previous state.

_________________________________


## Category: Tree Traversal
> Location: traversing/travers.lisp 


#### .children() [+]
Get the children of each element in the set of matched elements, optionally filtered by a selector.

#### .closest() [-]
For each element in the set, get the first element that matches the selector by testing the element itself and traversing up through its ancestors in the DOM tree.


#### .find() [-]
Get the descendants of each element in the current set of matched elements, filtered by a selector, jQuery object, or element.
> Location:

#### .next() [-]
Get the immediately following sibling of each element in the set of matched elements. If a selector is provided, it retrieves the next sibling only if it matches that selector.

#### .nextAll() [-]
Get all following siblings of each element in the set of matched elements, optionally filtered by a selector.

#### .nextUntil() [-]
Get all following siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object passed.

#### .offsetParent() [-]
Get the closest ancestor element that is positioned.

#### .parent() [-]
Get the parent of each element in the current set of matched elements, optionally filtered by a selector.

#### .parents() [-]
Get the ancestors of each element in the current set of matched elements, optionally filtered by a selector.

#### .parentsUntil() [-]
Get the ancestors of each element in the current set of matched elements, up to but not including the element matched by the selector, DOM node, or jQuery object.

#### .prev() [-]
Get the immediately preceding sibling of each element in the set of matched elements. If a selector is provided, it retrieves the previous sibling only if it matches that selector.

#### .prevAll() [-]
Get all preceding siblings of each element in the set of matched elements, optionally filtered by a selector, in the reverse document order.

#### .prevUntil() [-]
Get all preceding siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object.

#### .siblings() [-]
Get the siblings of each element in the set of matched elements, optionally filtered by a selector.

## Category: Fading
> Location: efects/fadding 

### .fadeIn() [-]
Display the matched elements by fading them to opaque.

### .fadeOut() [-]
Hide the matched elements by fading them to transparent.

### .fadeTo() [-]
Adjust the opacity of the matched elements.

### .fadeToggle() [-]
Display or hide the matched elements by animating their opacity.
_________________________________

## Category: Widgets
Widgets are feature-rich, stateful plugins that have a full life-cycle, along with methods and events. Check out the widget factory documentation for more details.
>Location: ui/

### Accordion Widget [-]
Convert a pair of headers and content panels into an accordion.

### Autocomplete Widget [-]
Autocomplete enables users to quickly find and select from a pre-populated list of values as they type, leveraging searching and filtering.

### Button Widget [-]
Themeable buttons.

### Buttonset Widget [-]
Themeable button sets.

### Checkboxradio Widget [-]
Converts inputs of type radio and checkbox to themeable buttons.

### Controlgroup Widget [-]
Themeable set of input widgets.

### Datepicker Widget [-]
Select a date from a popup or inline calendar

### Dialog Widget [-]
>> Location: dialog.lisp

Open content in an interactive overlay.

### Form Reset Mixin [-]
A mixin to call refresh() on an input widget when the parent form gets reset.

### Widget Factory [-]
Create stateful jQuery plugins using the same abstraction as all jQuery UI widgets.

### Widget Plugin Bridge [-]
Part of the jQuery Widget Factory is the jQuery.widget.bridge() method. This acts as the middleman between the object created by $.widget() and the jQuery API.

### Menu Widget [-]
Themeable menu with mouse and keyboard interactions for navigation.

### Progressbar Widget [-]
Display status of a determinate or indeterminate process.

### Selectmenu Widget [-]
Duplicates and extends the functionality of a native HTML select element to overcome the limitations of the native control.

### Slider Widget [-]
Drag a handle to select a numeric value.

### Spinner Widget [-]
Enhance a text input for entering numeric values, with up/down buttons and arrow key handling.

### Tabs Widget [+]
>>Location: tabs.lisp

A single content area with multiple panels, each associated with a header in a list.

### Tooltip Widget [-]
Customizable, themeable tooltips, replacing native tooltips.

_________________________________

## Category: Interactions
> Location: ui/

jQuery UI provides a set of mouse-based interactions as building blocks for rich interfaces and complex widgets.

### Draggable Widget [+]
>> Location: draggable.lisp

Allow elements to be moved using the mouse.

### Droppable Widget [+]
>> Location: droppable.lisp

Create targets for draggable elements.

### Mouse Interaction [-]
The base interaction layer.

### Resizable Widget [+]
>> Location: resizable.lisp

Change the size of an element using the mouse.

### Selectable Widget [-]
Use the mouse to select elements, individually or in a group.

### Sortable Widget [-]
Reorder elements in a list or grid using the mouse.

_________________________________



## Copyright
Copyright © 2017,2024 Vladimir Mezentsev

