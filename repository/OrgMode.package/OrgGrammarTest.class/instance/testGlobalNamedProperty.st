tests - properties
testGlobalNamedProperty
	source := '#+PROPERTY: RootDir1 This/is/a/long/directory/'.
	self parse: source rule: #globalNamedProperty