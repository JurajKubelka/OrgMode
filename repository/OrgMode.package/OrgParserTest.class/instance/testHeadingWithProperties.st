tests - heading
testHeadingWithProperties
	super testHeadingWithProperties.
	self assert: result isHeading.
	self assert: result items size equals: 1.
	self assert: result items first properties properties size equals: 1.
	self assert: (result items first propertyValueAt: #prop1) equals: 'value one'.
	self assertText.