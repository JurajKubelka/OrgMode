tests - list
testListContent
	super testListContent.
	self assert: result isListContent.
	self assert: result lines size equals: 3.
	self assertText.