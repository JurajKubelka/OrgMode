tests - heading
testHeading
	super testHeading.
	self assert: result isHeading.
	self assert: result items size equals: 1.
	self assert: result items first isHeadingItem.
	self assert: result items first heading equals: 'Foo'.
	self assert: result items first level equals: 1.
	self assertText.