instance creation
newHeadingProperties: aCollection 
	^ OrgHeadingProperties new
		indent: aCollection first;
		firstEnd: aCollection third second, aCollection third third asString;
		properties: (aCollection fourth ifNil: [ #() ]);
		lastEnd: aCollection fifth second, 
					(aCollection fifth third ifNotNil: #asString ifNil: [ '' ]);
		yourself