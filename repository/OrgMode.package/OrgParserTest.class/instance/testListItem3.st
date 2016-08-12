tests - list
testListItem3
	super testListItem3.
	self assert: result isListItem.
	self assert: result index equals: 2.
	self assert: result separator equals: $..
	self assert: result space equals: ' '.
	self assertText.