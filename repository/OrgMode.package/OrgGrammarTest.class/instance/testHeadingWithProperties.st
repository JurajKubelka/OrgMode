tests - heading
testHeadingWithProperties
	source := '* Foo
   :PROPERTIES:
   :prop1: value one
   :END:'.
	self parse: source rule: #heading.