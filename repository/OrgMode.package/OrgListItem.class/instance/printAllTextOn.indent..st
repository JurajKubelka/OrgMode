printing
printAllTextOn: aStream indent: anInteger
	self printIndent: anInteger on: aStream.
	aStream
		print: self index;
		nextPut: self separator;
		nextPutAll: self space.
	self contents printAllTextOn: aStream indent: self indent + anInteger