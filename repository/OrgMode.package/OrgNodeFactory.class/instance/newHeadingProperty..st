instance creation
newHeadingProperty: aCollection 
	^ OrgHeadingProperty new
		label: aCollection second;
		spaces: aCollection fourth;
		contents: aCollection fifth;
		end: (aCollection sixth ifNil: [ '' ]);
		yourself