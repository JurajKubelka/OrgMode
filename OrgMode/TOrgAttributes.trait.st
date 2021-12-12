Trait {
	#name : #TOrgAttributes,
	#category : #'OrgMode-Extra'
}

{ #category : #'accessing - attributes' }
TOrgAttributes >> attributeAt: key ifAbsentPut: aBlock [

	^ self attributes at: key ifAbsentPut: aBlock
]

{ #category : #'accessing - attributes' }
TOrgAttributes >> attributeAt: key put: value [

	^ self attributes at: key put: value
]

{ #category : #'accessing - attributes' }
TOrgAttributes >> attributes [

	^ self explicitRequirement
]

{ #category : #'accessing - attributes' }
TOrgAttributes >> attributesAddAll: aDictionaryOrNil [

	aDictionaryOrNil ifNil: [ ^ aDictionaryOrNil ].
	^ self attributes addAll: aDictionaryOrNil
]

{ #category : #'accessing - attributes' }
TOrgAttributes >> attributesOrNil [

	^ self explicitRequirement
]
