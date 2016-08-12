printing
printAllTextOn: aStream 
	self body do: [ :eachPart | eachPart printAllTextOn: aStream ].
	self heading ifNotNil: [ :aHeading | aHeading printAllTextOn: aStream ].