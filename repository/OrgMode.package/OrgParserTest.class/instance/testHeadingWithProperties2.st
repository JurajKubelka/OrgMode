tests - heading
testHeadingWithProperties2
	super testHeadingWithProperties2.
	self assert: result isHeading.
	self assert: result items size equals: 1.
	self assert: result items first properties properties size equals: 1.
	self assert: result items first body size equals: 1.
	self assertText.