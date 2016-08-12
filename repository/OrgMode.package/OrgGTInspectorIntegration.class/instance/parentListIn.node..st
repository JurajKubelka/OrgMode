extensions
parentListIn: composite node: aNode
	^ composite list 
			title: 'Predeccesors';
			display: [ aNode predecessors ];
			when: [ aNode parent notNil and: [ aNode predecessors notEmpty ] ]