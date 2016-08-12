accessing
lines: aCollection 
	lines ifNotNil: [ lines do: [ :each | each parent: nil ] ].
	lines := aCollection.
	aCollection do: [ :each | each parent: self ]