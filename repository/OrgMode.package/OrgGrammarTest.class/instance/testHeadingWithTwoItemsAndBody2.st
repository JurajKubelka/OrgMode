tests - heading
testHeadingWithTwoItemsAndBody2
	source := '* Foo
 hola
* Bar'.
	self parse: source rule: #heading.