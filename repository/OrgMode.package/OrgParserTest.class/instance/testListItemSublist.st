tests - list
testListItemSublist
	super testListItemSublist.
	self assert: result isListItem.
	self assert: result index equals: 1.
	self assert: result separator equals: $..
	self assert: result space equals: ' '.
	self assert: result text equals: source.
	self assert: result line equals: 'abc'.
	self assert: result sublist isList.
	self assert: result sublist items size equals: 1.
	self assertText.