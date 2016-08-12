printing
printAllTextOn: aStream 
	self items do: [ :eachHeadingItem |
		eachHeadingItem printAllTextOn: aStream ]