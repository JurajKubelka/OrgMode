grammar - lists
listItem
	^ super listItem ==> [ :results |
			self nodeFactory newListItem: results ]