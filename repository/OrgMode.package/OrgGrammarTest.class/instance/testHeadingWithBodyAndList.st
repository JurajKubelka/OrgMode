tests - heading
testHeadingWithBodyAndList
	source := '* Foo
body 1
body 2
1. list one
2. list two
another body
anotehr body 2'.
	self parse: source rule: #heading