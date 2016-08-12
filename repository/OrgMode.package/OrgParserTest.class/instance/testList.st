tests - list
testList
	super testList.
	self assert: result isList.
	self assert: result items size equals: 1.
	self assert: result items first isListItem.
	self assertText.