tests - heading
testHeading2
	super testHeading2.
	self assert: result isHeading.
	self assert: result items size equals: 1.
	self assert: result items first isHeadingItem.
	self assert: result items first heading equals: 'Foo'.
	self assert: result items first level equals: 2.
	self assertText.