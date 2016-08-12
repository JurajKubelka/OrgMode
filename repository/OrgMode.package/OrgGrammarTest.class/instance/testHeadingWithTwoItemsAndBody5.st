tests - heading
testHeadingWithTwoItemsAndBody5
	source := '* Foo
** Foo2
 :anything:
 other
* Bar'.
	self parse: source rule: #heading.