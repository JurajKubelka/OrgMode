tests -basic
testBodyOneLine
	super testBodyOneLine.
	self assert: result isLine.
	self assertText.