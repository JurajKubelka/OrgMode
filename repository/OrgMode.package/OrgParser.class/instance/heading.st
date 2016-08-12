grammar - heading
heading
	^ super heading ==> [ :results | 
			self nodeFactory newHeading: results ]