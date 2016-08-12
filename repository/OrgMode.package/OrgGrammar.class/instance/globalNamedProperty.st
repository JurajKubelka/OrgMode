grammar - properties
globalNamedProperty
	^ startOfLine, '#+PROPERTY:' asParser, blank plus, propertyName, blank plus, line, lineEnd