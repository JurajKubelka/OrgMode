instance creation
newHeadingLabel: results
	^ Array
			with: (OrgHeadingLabel new 
						level: results first second size; 
						space: results second; 
						label: results third; 
						end: results fourth; 
						yourself)
			with: results fifth
			with: results sixth
			with: results seventh
		