grammar - lists
listContent
	^ listContentElement, listContentElement trimAlign nonEmpty star
		 map: [ :first :rest | Array with: first withAll: rest ]