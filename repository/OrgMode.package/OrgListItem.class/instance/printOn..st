printing
printOn: aStream
	super printOn: aStream.
	aStream
		nextPutAll: '(index = ';
		nextPut: $';
		print: self index;
		nextPut: self separator;
		nextPutAll: self space;
		nextPut: $';
		nextPut: $)