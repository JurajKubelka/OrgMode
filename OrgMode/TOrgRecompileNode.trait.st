Trait {
	#name : #TOrgRecompileNode,
	#category : #'OrgMode-Extra'
}

{ #category : #parsing }
TOrgRecompileNode >> parse: aReadStream [

	^ self parser parse: aReadStream rule: self rule
]

{ #category : #parsing }
TOrgRecompileNode >> parseString: aString [

	^ self parse: aString readStream
]

{ #category : #'event handling' }
TOrgRecompileNode >> passInformationTo: newNode [

	^ self explicitRequirement
]

{ #category : #'event handling' }
TOrgRecompileNode >> recompileNodeWithNewText: aText ui: aRepresentation [

	| newNode |
	aText = self text ifTrue: [ ^ self ].
	newNode := self parseString: aText asString.
	newNode ifNil: [ ^ self inform: 'Cannot find parser.' ].
	newNode isPetitFailure ifTrue: [ 
		^ self inform: 'Cannot parse the text' ].
	newNode := self passInformationTo: newNode.
	self becomeForward: newNode
]
