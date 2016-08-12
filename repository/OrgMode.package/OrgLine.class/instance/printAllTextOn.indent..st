printing
printAllTextOn: aStream indent: anInteger 
	aStream nextPutAll: self line.
	self end ifNotNil: [ aStream nextPut: self end ].