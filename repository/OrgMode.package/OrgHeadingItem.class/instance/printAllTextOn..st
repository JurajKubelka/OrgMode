printing
printAllTextOn: aStream 
	self label printAllTextOn: aStream.
	self properties ifNotNil: [ :aProperties | 
		aProperties printAllTextOn: aStream ].
	self body do: [ :eachPart | eachPart printAllTextOn: aStream ].
	self subheading printAllTextOn: aStream