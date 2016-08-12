printing
printAllTextOn: aStream 
	self level timesRepeat: [ aStream nextPut: $* ].
	aStream
		nextPutAll: self space;
		nextPutAll: self label.
	self end ifNotNil: [ aStream nextPut: self end ].