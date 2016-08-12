grammar - basic
emptyLine
	^ super emptyLine ==> [ :results | 
			self nodeFactory newEmptyLine: results ]