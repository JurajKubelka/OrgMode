tests - list
testListItem
	super testListItem.
	self assert: result isListItem.
	self assert: result index equals: 1.
	self assert: result separator equals: $..
	self assert: result space equals: ' '.
	self assert: result contents text equals: 'abc'.
	self assertText.