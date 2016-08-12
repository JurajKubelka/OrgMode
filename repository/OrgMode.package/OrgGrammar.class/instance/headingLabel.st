grammar - heading
headingLabel
	^ indentPrefix, #space asParser plus flatten, 
		lineEnd negate plus flatten, lineEnd, 
		headingProperties optional, 
		body optional, 
		heading optional