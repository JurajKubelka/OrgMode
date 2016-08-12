tests - heading
testHeadingWithProperties2
	source := '* Foo
   :PROPERTIES:
   :prop1: value one
   :END:
body'.
	self parse: source rule: #heading.