tests - heading
testHeadingMulti
	super testHeadingMulti.
	self assert: result isHeading.
	self assert: result items size equals: 2.
	self assert: result items first isHeadingItem.
	self assert: result items first heading equals: '1'.
	self assert: result items first level equals: 1.
	self assert: result items second isHeadingItem.
	self assert: result items second heading equals: '7'.
	self assert: result items second level equals: 1.
	self assertText.