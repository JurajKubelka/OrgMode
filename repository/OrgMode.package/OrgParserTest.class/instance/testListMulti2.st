tests - list
testListMulti2
	super testListMulti2.
	self assert: result isList.
	self assert: result items size equals: 1.
	self assert: result items first isListItem.
	self assert: result items first sublist isList.
	self assert: result items first sublist items size equals: 1.
	self assertText.