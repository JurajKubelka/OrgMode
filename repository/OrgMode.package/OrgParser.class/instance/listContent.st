grammar - lists
listContent
	^ super listContent map: [ :contents | 
			self nodeFactory newListContents: contents ]