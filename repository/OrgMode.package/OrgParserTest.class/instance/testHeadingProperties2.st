tests - properties
testHeadingProperties2
	super testHeadingProperties2.
	self assert: result isProperties.
	self assert: result properties size equals: 2.
	self assert: result properties first label equals: 'tangle'.
	self assert: result properties first contents equals: 'yes'.
	self assert: result properties second label equals: 'CUSTOM_ID'.
	self assert: result properties second contents equals: 'code-block-section'.
	self assertText.