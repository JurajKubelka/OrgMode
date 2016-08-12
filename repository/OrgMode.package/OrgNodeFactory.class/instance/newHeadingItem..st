instance creation
newHeadingItem: results
	^ results isCollection 
			ifTrue: [ 
				OrgHeadingItem new
					label: results first;
					properties: results second;
					body: results third;
					subheading: results fourth;
					yourself ]
			ifFalse: [ results ]