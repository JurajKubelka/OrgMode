grammar - properties
globalSpecialProperty
	^ startOfLine, '#+' asParser, propertyName, $: asParser, blank plus, line, lineEnd