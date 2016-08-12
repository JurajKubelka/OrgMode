printing
printOn: aStream
	super printOn: aStream.
	aStream 
		space;
		nextPut: $[.
	self lines 
		ifNil: [ aStream nextPutAll: 'empty]' ]
		ifNotNil: [ 
			aStream
				print: self lines size;
				space;
				nextPutAll: ('line' asPluralBasedOn: self lines);
				nextPut: $] ]