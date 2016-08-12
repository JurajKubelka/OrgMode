tests -basic
testBodyOneLine2
	super testBodyOneLine2.
	self assert: result isLine.
	self assertText.