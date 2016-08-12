grammar - heading
headingItem
	^ super headingItem ==> [ :results |
			self nodeFactory newHeadingItem: results ]