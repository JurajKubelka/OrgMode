tests - properties
testGlobalSpecialProperty
	super testGlobalSpecialProperty.
	self assert: result isProperty.
	self assert: result label equals: 'LANGUAGE'.
	self assert: result contents equals: 'en'.
	self assertText.