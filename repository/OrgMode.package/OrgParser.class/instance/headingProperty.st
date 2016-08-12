grammar - properties
headingProperty
	^ super headingProperty ==> [ :results |
			self nodeFactory newHeadingProperty: results ]