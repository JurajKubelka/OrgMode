grammar - properties
headingProperties
	^ blank plus flatten, 
		#setIl asParser,
		headingPropertiesStart, 
		headingProperty trimAlign plus, 
		headingPropertiesEnd trimAlign, 
		#restoreIl asParser