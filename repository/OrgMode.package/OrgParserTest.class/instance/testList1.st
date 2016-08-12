tests - list
testList1
	super testList1.
	self assert: result isList.
	self assert: result items size equals: 3.
	self assertText.