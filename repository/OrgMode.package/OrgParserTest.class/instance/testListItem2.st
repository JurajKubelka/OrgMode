tests - list
testListItem2
	super testListItem2.
	self assert: result isListItem.
	self assert: result index equals: 1.
	self assert: result separator equals: $..
	self assert: result space equals: ' '.
	self assertText.