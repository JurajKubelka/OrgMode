tests - properties
testGlobalSpecialProperty2
	super testGlobalSpecialProperty2.
	self assert: result isProperty.
	self assert: result label equals: 'LANGUAGE'.
	self assert: result contents equals: 'en'.
	self assertText.