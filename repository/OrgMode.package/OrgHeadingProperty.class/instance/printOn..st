printing
printOn: aStream 
	aStream 
		nextPut: $:;
		nextPutAll: self label;
		nextPut: $:;
		nextPutAll: self spaces;
		nextPutAll: self contents