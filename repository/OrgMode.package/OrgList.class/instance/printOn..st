printing
printOn: aStream
	super printOn: aStream.
	aStream 
		space;
		nextPut: $[.
	self items 
		ifNil: [ aStream nextPutAll: 'empty]' ]
		ifNotNil: [ 
			aStream
				print: self items size;
				space;
				nextPutAll: ('item' asPluralBasedOn: self items);
				nextPut: $] ]