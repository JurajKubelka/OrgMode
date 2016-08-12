tests - heading
testHeadingWithTwoItemsAndBody3
	source := '* Foo
 hola
** Heading
cao
* Bar'.
	self parse: source rule: #heading.