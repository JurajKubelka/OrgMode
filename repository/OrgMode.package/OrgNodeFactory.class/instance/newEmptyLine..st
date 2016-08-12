instance creation
newEmptyLine: aCollection
	^ OrgEmptyLine new
			line: aCollection second ;
			end: aCollection third;
			yourself