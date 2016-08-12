printing
printAllTextOn: aStream 
	aStream
		print: self index;
		nextPut: self separator;
		nextPutAll: self space.
	self contents printAllTextOn: aStream indent: self indent