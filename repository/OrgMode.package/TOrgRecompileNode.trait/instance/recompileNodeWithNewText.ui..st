event handling
recompileNodeWithNewText: aText ui: aRepresentation
	| newNode |
	aText = self text ifTrue: [ ^ self ].
	newNode := self parseString: aText asString.
	newNode ifNil: [ ^ self inform: 'Cannot find parser.' ].
	newNode isPetitFailure ifTrue: [ ^ self inform: 'Cannot parse the text' ].
	newNode := self passInformationTo: newNode.
	self becomeForward: newNode.