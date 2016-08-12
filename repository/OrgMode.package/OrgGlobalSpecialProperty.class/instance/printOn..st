printing
printOn: aStream 
	aStream 
		nextPutAll: '#+';
		nextPutAll: self label;
		nextPut: $:;
		space;
		nextPutAll: self contents