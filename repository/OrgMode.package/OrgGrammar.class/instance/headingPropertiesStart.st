grammar - properties
headingPropertiesStart
	^ ':PROPERTIES:' asParser flatten, blank star flatten, lineEnd