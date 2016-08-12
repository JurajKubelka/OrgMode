grammar - properties
globalNamedProperty
	^ super globalNamedProperty ==> [ :results |
			self nodeFactory newGlobalNamedProperty: results ]