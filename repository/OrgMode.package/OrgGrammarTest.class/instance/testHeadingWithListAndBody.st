tests - heading
testHeadingWithListAndBody
	source := '* Foo
text 1
text 2
1. list one
text 3
text 4'.
	self parse: source rule: #heading.