extensions
textOn: composite node: aOrgNode
	^ composite text 
			title: 'Text';
			display: [ aOrgNode text ];
			act: [ :aRepresentation :aNode | aNode recompileNodeWithNewText: aRepresentation text ui: aRepresentation ]
				icon: Smalltalk ui icons glamorousAccept
				entitled: 'Accept new text';
			act: [ :aRepresentation :aNode | aNode document save ]
				icon: Smalltalk ui icons glamorousSave
				entitled: 'Save document to disk'