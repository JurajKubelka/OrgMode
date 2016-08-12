tests - org
testHeadingWithTwoItemsAndBody5org
	source := '* Foo
** Foo2
 :anything:
 other
* Bar'.
	self parse: source rule: #org.