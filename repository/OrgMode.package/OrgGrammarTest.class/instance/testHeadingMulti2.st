tests - heading
testHeadingMulti2
	source := '* 1
*** 2
'.
	self parse: source rule: #heading.