Class {
	#name : #OrgList,
	#superclass : #OrgAbstractList,
	#instVars : [
		'items'
	],
	#category : #'OrgMode-Nodes'
}

{ #category : #'gt-inspector-extension' }
OrgList >> gtInspectorListOn: composite [

	<gtInspectorPresentationOrder: 9>
	^ self items ifNotNil: [ :aCollection | 
		  (aCollection gtInspectorItemsIn: composite) title: 'List' ]
]

{ #category : #accessing }
OrgList >> items [

	^ items
]

{ #category : #accessing }
OrgList >> items: aCollection [

	items ifNotNil: [ items do: [ :each | each parent: nil ] ].
	items := aCollection.
	aCollection do: [ :each | each parent: self ]
]

{ #category : #accessing }
OrgList >> listItems [

	^ self items
]

{ #category : #printing }
OrgList >> printAllTextOn: aStream [

	self items do: [ :eachItem | eachItem printAllTextOn: aStream ]
]

{ #category : #printing }
OrgList >> printOn: aStream [

	super printOn: aStream.
	aStream
		space;
		nextPut: $[.
	self items ifNil: [ aStream nextPutAll: 'empty]' ] ifNotNil: [ 
		aStream
			print: self items size;
			space;
			nextPutAll: ('item' asPluralBasedOn: self items);
			nextPut: $] ]
]
