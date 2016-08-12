tests - heading
testHeadingWithProperties3
	source := '* Bar
** Foo
   :PROPERTIES:
   :prop1: value one
   :END:
body'.
	self parse: source rule: #heading.