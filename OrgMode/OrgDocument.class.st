Class {
	#name : #OrgDocument,
	#superclass : #OrgNode,
	#instVars : [
		'body',
		'heading'
	],
	#category : #'OrgMode-Nodes'
}

{ #category : #accessing }
OrgDocument >> body [

	^ body ifNil: [ body := #(  ) ]
]

{ #category : #accessing }
OrgDocument >> body: aCollectionOrNil [

	body ifNotNil: [ body do: [ :each | each parent: nil ] ].
	body := aCollectionOrNil.
	aCollectionOrNil ifNotNil: [ 
		aCollectionOrNil do: [ :each | each parent: self ] ]
]

{ #category : #accessing }
OrgDocument >> document [

	^ self
]

{ #category : #accessing }
OrgDocument >> fileReference [

	^ self attributeAt: #fileReference ifAbsentPut: nil
]

{ #category : #accessing }
OrgDocument >> fileReference: aFileReference [

	^ self attributeAt: #fileReference put: aFileReference
]

{ #category : #'gt-inspector-extension' }
OrgDocument >> gtInspectorHeadingOn: composite [

	<gtInspectorPresentationOrder: -5>
	^ self heading ifNotNil: [ :aHeading | 
		  aHeading gtInspectorHeadingOn: composite ]
]

{ #category : #accessing }
OrgDocument >> heading [

	^ heading
]

{ #category : #accessing }
OrgDocument >> heading: anObjectOrNil [

	heading ifNotNil: [ heading parent: nil ].
	heading := anObjectOrNil.
	anObjectOrNil ifNotNil: [ anObjectOrNil parent: self ]
]

{ #category : #accessing }
OrgDocument >> headingItems [

	^ self heading items
]

{ #category : #testing }
OrgDocument >> isDocument [

	^ true
]

{ #category : #testing }
OrgDocument >> meaningfulParent [

	^ self parent
]

{ #category : #accessing }
OrgDocument >> parent [

	^ self
]

{ #category : #accessing }
OrgDocument >> parent: anObject [

	"ignore"

	
]

{ #category : #accessing }
OrgDocument >> predecessors [

	^ #(  )
]

{ #category : #printing }
OrgDocument >> printAllTextOn: aStream [

	self body do: [ :eachPart | eachPart printAllTextOn: aStream ].
	self heading ifNotNil: [ :aHeading | 
		aHeading printAllTextOn: aStream ]
]

{ #category : #accessing }
OrgDocument >> properties [

	^ self body select: #isProperty
]

{ #category : #properties }
OrgDocument >> propertyAt: aString [

	^ self properties
		  detect: [ :each | each label = aString ]
		  ifNone: [ OrgEmptyProperty uniqueInstance ]
]

{ #category : #properties }
OrgDocument >> propertyValueAt: aString [

	^ (self propertyAt: aString) contents
]

{ #category : #accessing }
OrgDocument >> rule [

	^ #org
]

{ #category : #actions }
OrgDocument >> save [

	self fileReference ifNil: [ ^ self ].
	self fileReference parent ensureCreateDirectory.
	self fileReference exists ifTrue: [ 
		| backup |
		backup := self fileReference , 'backup'.
		backup ensureDelete.
		self fileReference moveTo: backup ].
	self fileReference writeStreamDo: [ :aStream | 
		self printAllTextOn: aStream ]
]

{ #category : #enumerating }
OrgDocument >> selectHeadings: aBlock [

	"Deeply enumerate headings and returns those that aBlock returns true."

	^ self heading selectHeadings: aBlock
]
