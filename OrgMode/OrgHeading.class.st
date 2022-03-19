Class {
	#name : #OrgHeading,
	#superclass : #OrgAbstractHeading,
	#instVars : [
		'items'
	],
	#category : #'OrgMode-Nodes'
}

{ #category : #'gt-inspector-extension' }
OrgHeading >> gtInspectorHeadingOn: composite [

	<gtInspectorPresentationOrder: -5>
	^ OrgGTInspectorIntegration uniqueInstance
		  headingOn: composite
		  node: self
]

{ #category : #accessing }
OrgHeading >> headingItems [

	^ self items
]

{ #category : #accessing }
OrgHeading >> items [

	^ items
]

{ #category : #accessing }
OrgHeading >> items: aCollection [

	items ifNotNil: [ items do: [ :each | each parent: nil ] ].
	items := aCollection.
	aCollection do: [ :each | each parent: self ]
]

{ #category : #printing }
OrgHeading >> printAllTextOn: aStream [

	self items do: [ :eachHeadingItem | 
		eachHeadingItem printAllTextOn: aStream ]
]

{ #category : #enumerating }
OrgHeading >> selectHeadings: aBlock [

	"Deeply enumerate headings and returns those that aBlock returns true."

	| result |
	result := OrderedCollection new.
	self items do: [ :eachHeadingItem | 
		(aBlock cull: eachHeadingItem) ifTrue: [ 
			result addLast: eachHeadingItem ].
		result addAll: (eachHeadingItem selectHeadings: aBlock) ].
	^ result
]
