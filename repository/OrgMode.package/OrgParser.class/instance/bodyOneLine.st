grammar - basic
bodyOneLine
	^ super bodyOneLine ==> [ :results | 
			self nodeFactory newBodyOneLine: results ]