tests - heading
testHeadingWithTwoItemsAndBody
	source := '* Foo
hola
cao
* Bar'.
	self parse: source rule: #heading.