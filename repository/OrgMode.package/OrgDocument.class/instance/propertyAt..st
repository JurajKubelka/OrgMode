properties
propertyAt: aString 
	^ self properties 
				detect: [ :each | each label = aString ]
				ifNone: [ OrgEmptyProperty uniqueInstance ]