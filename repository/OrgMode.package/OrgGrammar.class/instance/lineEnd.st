grammar - basic
lineEnd
	^ #newline asParser / (#eof asParser map: [ :val | nil ])