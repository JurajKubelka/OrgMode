Trait {
	#name : #TOrgParseRule,
	#category : #'OrgMode-Extra'
}

{ #category : #parsing }
TOrgParseRule >> parse: aReadStream rule: aString [

	^ (self productionAt: aString) parse: aReadStream
]
