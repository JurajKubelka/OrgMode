instance creation
newListItem: results
	^ OrgListItem new 
			index: results first first asNumber;
			separator: results first second;
			space: results first third;
			contents: results second;
			indent: (results first first size + 1 + results first third size);
			yourself