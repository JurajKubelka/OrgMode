printing
printAllTextOn: aStream 
	self items do: [ :eachItem | eachItem printAllTextOn: aStream ] 