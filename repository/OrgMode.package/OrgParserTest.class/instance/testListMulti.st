tests - list
testListMulti
	super testListMulti.
	self assert: result isList.
	self assert: result items size equals: 2.
	self assert: result items first isListItem.
	self assert: result items first sublist isList.
	self assert: result items first sublist items size equals: 3.
	self assert: result items second sublist isList.
	self assert: result items second sublist items size equals: 0.
	self assertText.