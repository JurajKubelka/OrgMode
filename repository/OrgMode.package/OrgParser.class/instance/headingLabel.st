grammar - heading
headingLabel
	^ super headingLabel ==> [ :results |
			self nodeFactory newHeadingLabel: results ]