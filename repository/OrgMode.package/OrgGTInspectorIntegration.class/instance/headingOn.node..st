extensions
headingOn: composite node: aNode
	^ composite tree 
			title: 'Heading';
			display: [ aNode headingItems ];
			when: [ aNode headingItems notEmpty ];
			children: [ :aHeadingItem | aHeadingItem headingItems ];
			format: [ :aHeadingItem | aHeadingItem title ];
			beMultiple;
			sendOneOrMultipleAs: OrgCollection 
				updatedBy: [ :aCollection | aCollection parent: aNode parent ]