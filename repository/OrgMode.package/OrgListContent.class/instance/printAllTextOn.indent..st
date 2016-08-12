printing
printAllTextOn: aStream indent: anInteger 
	self lines first printAllTextOn: aStream.
	self lines allButFirstDo: [ :eachLine | 
		eachLine printAllTextOn: aStream indent: anInteger ]