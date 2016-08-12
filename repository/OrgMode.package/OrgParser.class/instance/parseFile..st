parsing
parseFile: aFileReference
	^ aFileReference readStreamDo: [ :aStream | 
			self parse: aStream ]