instance creation
newListContents: contents
	^ OrgListContent new 
			lines: contents;
			yourself