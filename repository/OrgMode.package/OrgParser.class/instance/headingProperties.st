grammar - properties
headingProperties
	^ super headingProperties ==> [ :results |
			self nodeFactory newHeadingProperties: results ]