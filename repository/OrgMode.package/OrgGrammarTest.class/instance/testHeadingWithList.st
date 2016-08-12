tests - heading
testHeadingWithList
	source := '* Foo
1. list one'.
	self parse: source rule: #heading.