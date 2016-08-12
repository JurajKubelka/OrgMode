printing
printOn: aStream 
	aStream 
		nextPutAll: '#+PROPERTY:';
		space;
		nextPutAll: self label;
		space;
		nextPutAll: self contents