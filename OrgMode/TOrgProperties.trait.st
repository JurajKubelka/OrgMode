Trait {
	#name : #TOrgProperties,
	#category : #'OrgMode-Extra'
}

{ #category : #accessing }
TOrgProperties >> properties [

	self explicitRequirement
]

{ #category : #properties }
TOrgProperties >> propertyAt: aString [

	^ self properties propertyAt: aString
]

{ #category : #properties }
TOrgProperties >> propertyValueAt: aString [

	^ self properties propertyValueAt: aString
]
