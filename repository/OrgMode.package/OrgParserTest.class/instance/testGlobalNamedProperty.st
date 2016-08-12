tests - properties
testGlobalNamedProperty
	super testGlobalNamedProperty.
	self assert: result isProperty.
	self assert: result label equals: 'RootDir1'.
	self assert: result contents equals: 'This/is/a/long/directory/'.
	self assertText.