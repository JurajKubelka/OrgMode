instance creation
newHeading: results
	^ results second isCollection
			ifTrue: [ 
				OrgHeading new
					items: results second;
					yourself ] 
			ifFalse: [ results second ]