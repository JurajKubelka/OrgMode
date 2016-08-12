tests - heading
testHeadingWithTwoItemsAndBody4
	source := '* Foo
 hola

** Heading
cao
* Bar'.
	self parse: source rule: #heading.