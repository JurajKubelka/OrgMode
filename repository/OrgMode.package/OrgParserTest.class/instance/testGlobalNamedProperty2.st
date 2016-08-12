tests - properties
testGlobalNamedProperty2
	super testGlobalNamedProperty2.
	self assert: result isProperty.
	self assert: result label equals: 'RootDir1'.
	self assert: result contents equals: 'This/is/a/long/directory/'.
	self assertText.