printing
printOn: aStream 
	super printOn: aStream.
	aStream 
		nextPut: $[;
		print: self properties size;
		space;
		nextPutAll: ('item' asPluralBasedOn: self properties).
	self properties ifNotEmpty: [ 
		aStream nextPutAll: ', '.
		(1 to: (4 min: self properties size)) 
			do: [ :eachIndex |
				aStream nextPutAll: (self properties at: eachIndex) label ]
			separatedBy: [ aStream nextPutAll: ', ' ].
		self properties size > 4 ifTrue: [ aStream nextPutAll: '...' ] ].
	aStream
		nextPut: $].