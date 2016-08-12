printing
printIndent: anInteger on: aStream
	anInteger timesRepeat: [ aStream nextPut: Character space ]