Class {
	#name : #OrgHeadingProperties,
	#superclass : #OrgNodeWithParent,
	#instVars : [
		'properties',
		'firstEnd',
		'lastEnd',
		'indent'
	],
	#category : #'OrgMode-Nodes'
}

{ #category : #accessing }
OrgHeadingProperties >> firstEnd [

	^ firstEnd
]

{ #category : #accessing }
OrgHeadingProperties >> firstEnd: anObject [

	firstEnd := anObject
]

{ #category : #accessing }
OrgHeadingProperties >> indent [

	^ indent
]

{ #category : #accessing }
OrgHeadingProperties >> indent: aString [

	indent := aString
]

{ #category : #testing }
OrgHeadingProperties >> isProperties [

	^ true
]

{ #category : #accessing }
OrgHeadingProperties >> lastEnd [

	^ lastEnd
]

{ #category : #accessing }
OrgHeadingProperties >> lastEnd: anObject [

	lastEnd := anObject
]

{ #category : #printing }
OrgHeadingProperties >> printAllTextOn: aStream [

	aStream
		nextPutAll: self indent;
		nextPutAll: ':PROPERTIES:';
		nextPutAll: self firstEnd.
	self properties do: [ :eachProperty | 
		aStream nextPutAll: self indent.
		eachProperty printAllTextOn: aStream ].
	aStream
		nextPutAll: self indent;
		nextPutAll: ':END:';
		nextPutAll: self lastEnd
]

{ #category : #printing }
OrgHeadingProperties >> printOn: aStream [

	super printOn: aStream.
	aStream
		nextPut: $[;
		print: self properties size;
		space;
		nextPutAll: ('item' asPluralBasedOn: self properties).
	self properties ifNotEmpty: [ 
		aStream nextPutAll: ', '.
		(1 to: (4 min: self properties size))
			do: [ :eachIndex | 
				aStream nextPutAll: (self properties at: eachIndex) label ]
			separatedBy: [ aStream nextPutAll: ', ' ].
		self properties size > 4 ifTrue: [ aStream nextPutAll: '...' ] ].
	aStream nextPut: $]
]

{ #category : #accessing }
OrgHeadingProperties >> properties [

	^ properties
]

{ #category : #accessing }
OrgHeadingProperties >> properties: aCollection [

	properties ifNotNil: [ properties do: [ :e | e parent: nil ] ].
	properties := aCollection.
	properties do: [ :e | e parent: self ]
]

{ #category : #accessing }
OrgHeadingProperties >> propertyAt: aString [

	^ self properties
		  detect: [ :eachProperty | eachProperty label = aString ]
		  ifNone: [ OrgEmptyProperty uniqueInstance ]
]

{ #category : #accessing }
OrgHeadingProperties >> propertyValueAt: aString [

	^ (self propertyAt: aString) contents
]
