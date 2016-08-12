tests - heading
testHeadingWithProperties3
	super testHeadingWithProperties3.
	self assert: result isHeading.
	self assert: result items size equals: 1.
	self assert: result items first subheading items size equals: 1.
	self assert: result items first subheading items first properties properties size equals: 1.
	self assertText.