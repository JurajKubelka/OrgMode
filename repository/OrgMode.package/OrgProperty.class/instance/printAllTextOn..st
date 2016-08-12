printing
printAllTextOn: aStream 
	self printOn: aStream.
	aStream nextPutAll: self end asString