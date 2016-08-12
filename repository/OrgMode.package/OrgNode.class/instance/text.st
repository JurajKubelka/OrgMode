accessing
text
	^ String streamContents: [ :aStream |
			self printAllTextOn: aStream ]