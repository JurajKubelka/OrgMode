grammar - lists
listParagraph
	^ super listParagraph ==> [ :results | 
			self nodeFactory newListParagraph: results ]