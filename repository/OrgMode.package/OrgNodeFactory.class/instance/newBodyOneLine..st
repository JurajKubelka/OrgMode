instance creation
newBodyOneLine: aCollection
	^ OrgLine new
			line: aCollection third;
			end: aCollection fourth;
			yourself