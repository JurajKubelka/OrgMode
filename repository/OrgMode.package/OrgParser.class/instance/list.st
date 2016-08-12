grammar - lists
list
	^ super list map: [ :anArray | 
			self nodeFactory newList: anArray ]