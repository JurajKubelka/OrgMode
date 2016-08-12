instance creation
newListParagraph: results
	^ OrgListParagraph new
			line: results first;
			end: results second;
			yourself