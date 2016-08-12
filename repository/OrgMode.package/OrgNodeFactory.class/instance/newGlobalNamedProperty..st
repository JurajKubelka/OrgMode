instance creation
newGlobalNamedProperty: aCollection 
	^ OrgGlobalProperty new
		label: aCollection fourth;
		contents: aCollection sixth;
		end: (aCollection seventh ifNil: [ '' ]);
		yourself