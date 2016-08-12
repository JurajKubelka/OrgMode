parsing
parse: aReadStream rule: aString 
	^ (self productionAt: aString) parse: aReadStream