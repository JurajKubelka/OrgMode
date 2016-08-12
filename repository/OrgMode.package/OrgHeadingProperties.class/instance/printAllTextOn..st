printing
printAllTextOn: aStream 
	aStream 
		nextPutAll: self indent;
		nextPutAll: ':PROPERTIES:';
		nextPutAll: self firstEnd.
	self properties do: [ :eachProperty |
		aStream nextPutAll: self indent.
		eachProperty printAllTextOn: aStream ].
	aStream 
		nextPutAll: self indent;
		nextPutAll: ':END:';
		nextPutAll: self lastEnd.
