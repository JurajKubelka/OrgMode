extensions
parentTextOn: composite node: aOrgNode
	^ composite text 
			title: 'Parent Text';
			display: [ aOrgNode meaningfulParent text ];
			act: [ :aRepresentation :aNode | aOrgNode meaningfulParent recompileNodeWithNewText: aRepresentation text ui: aRepresentation ]
				icon: Smalltalk ui icons glamorousAccept
				entitled: 'Accept new text';
			act: [ aOrgNode document save ]
				icon: Smalltalk ui icons glamorousSave
				entitled: 'Save document to disk'