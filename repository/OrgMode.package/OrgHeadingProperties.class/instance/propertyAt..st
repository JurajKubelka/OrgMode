accessing
propertyAt: aString 
	^ self properties 
		detect: [ :eachProperty | eachProperty label = aString ]
		ifNone: [ OrgEmptyProperty uniqueInstance ]