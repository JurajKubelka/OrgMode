tests - org
testOrgNormal
	super testOrgNormal.
	self assert: result isDocument.
	self assert: result properties size equals: 3.
	self assert: result headingItems size equals: 2.
	self assert: result headingItems first headingItems size equals: 1.
	self assert: result headingItems first headingItems first properties properties size equals: 2.
	self assertText.