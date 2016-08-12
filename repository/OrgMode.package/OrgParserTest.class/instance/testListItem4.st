tests - list
testListItem4
	super testListItem4.
	self assert: result isListItem.
	self assert: result index equals: 2.
	self assert: result separator equals: $..
	self assert: result space equals: ' '.
	self assertText.