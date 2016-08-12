printing
printAllTextOn: aStream indent: anInteger 
	self printIndent: anInteger on: aStream.
	super printAllTextOn: aStream indent: anInteger.