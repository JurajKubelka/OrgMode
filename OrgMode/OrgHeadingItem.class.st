Class {
	#name : #OrgHeadingItem,
	#superclass : #OrgNodeWithParent,
	#instVars : [
		'label',
		'body',
		'subheading',
		'properties',
		'uniqueInstance'
	],
	#category : #'OrgMode-Nodes'
}

{ #category : #accessing }
OrgHeadingItem >> body [

	^ body ifNil: [ body := #(  ) ]
]

{ #category : #accessing }
OrgHeadingItem >> body: aCollectionOrNil [

	body ifNotNil: [ body do: [ :each | each parent: nil ] ].
	body := aCollectionOrNil.
	aCollectionOrNil ifNotNil: [ 
		aCollectionOrNil do: [ :each | each parent: self ] ]
]

{ #category : #'gt-inspector-extension' }
OrgHeadingItem >> gtInspectorHeadingOn: composite [

	<gtInspectorPresentationOrder: -8>
	^ OrgGTInspectorIntegration uniqueInstance
		  headingOn: composite
		  node: self
]

{ #category : #'gt-inspector-extension' }
OrgHeadingItem >> gtInspectorListOn: composite [

	<gtInspectorPresentationOrder: -5>
	^ OrgGTInspectorIntegration uniqueInstance
		  listOn: composite
		  node: self
]

{ #category : #accessing }
OrgHeadingItem >> heading [

	^ self label
		  ifNotNil: [ :aHeadingLabel | aHeadingLabel label ]
		  ifNil: [ '<empty>' ]
]

{ #category : #accessing }
OrgHeadingItem >> headingItems [

	^ self subheading items
]

{ #category : #accessing }
OrgHeadingItem >> headingParent [

	^ self
]

{ #category : #accessing }
OrgHeadingItem >> isHeadingItem [

	^ true
]

{ #category : #accessing }
OrgHeadingItem >> label [

	^ label
]

{ #category : #accessing }
OrgHeadingItem >> label: anOrgHeadingLabel [

	label ifNotNil: [ label parent: nil ].
	label := anOrgHeadingLabel.
	anOrgHeadingLabel parent: self
]

{ #category : #accessing }
OrgHeadingItem >> level [

	^ self label level
]

{ #category : #accessing }
OrgHeadingItem >> list [

	^ self body select: #isList
]

{ #category : #accessing }
OrgHeadingItem >> listItems [

	^ self list flatCollect: #listItems
]

{ #category : #'event handling' }
OrgHeadingItem >> passInformationTo: newNode [

	"The current OrgParser creates empty OrgHeading objects when a heading starts with more then one star.
	E.g., *** Third heading.
	So, we need to dive into the chain of OrgHeading objects and find the newNode that corresponds to the current OrgHeadingItem."

	| correctHeadingItemNode |
	correctHeadingItemNode := newNode.
	self level timesRepeat: [ 
		correctHeadingItemNode := correctHeadingItemNode items first ].
	^ super passInformationTo: correctHeadingItemNode
]

{ #category : #printing }
OrgHeadingItem >> printAllTextOn: aStream [

	self label printAllTextOn: aStream.
	self properties ifNotNil: [ :aProperties | 
		aProperties printAllTextOn: aStream ].
	self body do: [ :eachPart | eachPart printAllTextOn: aStream ].
	self subheading printAllTextOn: aStream
]

{ #category : #printing }
OrgHeadingItem >> printOn: aStream [

	super printOn: aStream.
	aStream
		nextPut: $(;
		print: self heading;
		nextPut: $)
]

{ #category : #accessing }
OrgHeadingItem >> properties [

	^ properties ifNil: [ 
		  properties := OrgEmptyProperties uniqueInstance ]
]

{ #category : #accessing }
OrgHeadingItem >> properties: anObject [

	properties ifNotNil: [ properties parent: nil ].
	properties := anObject.
	properties ifNotNil: [ properties parent: self ]
]

{ #category : #accessing }
OrgHeadingItem >> propertyValueAt: aSymbol [

	^ self properties propertyValueAt: aSymbol
]

{ #category : #accessing }
OrgHeadingItem >> rule [

	^ #headingItem
]

{ #category : #enumerating }
OrgHeadingItem >> selectHeadings: aBlock [

	"Deeply enumerate headings and returns those that aBlock returns true."

	^ self subheading selectHeadings: aBlock
]

{ #category : #accessing }
OrgHeadingItem >> space [

	^ self label space
]

{ #category : #accessing }
OrgHeadingItem >> subheading [

	^ subheading ifNil: [ subheading := OrgEmptyHeading uniqueInstance ]
]

{ #category : #accessing }
OrgHeadingItem >> subheading: anOrgHeadingOrNil [

	subheading ifNotNil: [ subheading parent: nil ].
	subheading := anOrgHeadingOrNil.
	anOrgHeadingOrNil ifNotNil: [ anOrgHeadingOrNil parent: self ]
]
