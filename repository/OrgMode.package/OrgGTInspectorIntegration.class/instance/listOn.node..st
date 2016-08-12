extensions
listOn: composite node: aNode
	^ composite tree 
			title: 'List';
			display: [ aNode listItems ];
			when: [ aNode listItems notEmpty ];
			children: [ :aOrgList | aOrgList listItems ];
			format: [ :aOrgListItem | aOrgListItem line ]