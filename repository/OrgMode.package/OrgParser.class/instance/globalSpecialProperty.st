grammar - properties
globalSpecialProperty
	^ super globalSpecialProperty ==> [ :results |
			self nodeFactory newSpecialProperty: results ]