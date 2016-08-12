instance creation
newSpecialProperty: aCollection 
	^ OrgGlobalSpecialProperty new
		label: aCollection third;
		contents: aCollection sixth;
		end: (aCollection seventh ifNil: [ '' ]);
		yourself