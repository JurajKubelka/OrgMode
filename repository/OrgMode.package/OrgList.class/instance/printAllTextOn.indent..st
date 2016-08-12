printing
printAllTextOn: aStream indent: anInteger 
	self items do: [ :eachItem | eachItem printAllTextOn: aStream indent: anInteger ] 