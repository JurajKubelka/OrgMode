Class {
	#name : #OrgListItem,
	#superclass : #OrgNodeWithParent,
	#instVars : [
		'index',
		'separator',
		'space',
		'contents',
		'indent'
	],
	#category : #'OrgMode-Nodes'
}

{ #category : #accessing }
OrgListItem >> contents [

	^ contents
]

{ #category : #accessing }
OrgListItem >> contents: anOrgListContent [

	contents ifNotNil: [ contents parent: nil ].
	contents := anOrgListContent.
	anOrgListContent parent: self
]

{ #category : #'gt-inspector-extension' }
OrgListItem >> gtInspectorListOn: composite [

	<gtInspectorPresentationOrder: -5>
	^ OrgGTInspectorIntegration uniqueInstance
		  listOn: composite
		  node: self
]

{ #category : #accessing }
OrgListItem >> indent [

	^ indent
]

{ #category : #accessing }
OrgListItem >> indent: anInteger [

	indent := anInteger
]

{ #category : #accessing }
OrgListItem >> index [

	^ index
]

{ #category : #accessing }
OrgListItem >> index: aNumber [

	index := aNumber
]

{ #category : #accessing }
OrgListItem >> isListItem [

	^ true
]

{ #category : #accessing }
OrgListItem >> items [

	^ self sublist items
]

{ #category : #accessing }
OrgListItem >> line [

	^ self contents line
]

{ #category : #accessing }
OrgListItem >> listItems [

	^ self items
]

{ #category : #printing }
OrgListItem >> printAllTextOn: aStream [

	aStream
		print: self index;
		nextPut: self separator;
		nextPutAll: self space.
	self contents printAllTextOn: aStream indent: self indent
]

{ #category : #printing }
OrgListItem >> printOn: aStream [

	super printOn: aStream.
	aStream
		nextPutAll: '(index = ';
		nextPut: $';
		print: self index;
		nextPut: self separator;
		nextPutAll: self space;
		nextPut: $';
		nextPut: $)
]

{ #category : #accessing }
OrgListItem >> rule [

	^ #listItem
]

{ #category : #accessing }
OrgListItem >> separator [

	^ separator
]

{ #category : #accessing }
OrgListItem >> separator: aCharacter [

	separator := aCharacter
]

{ #category : #accessing }
OrgListItem >> space [

	^ space
]

{ #category : #accessing }
OrgListItem >> space: aString [

	space := aString
]

{ #category : #accessing }
OrgListItem >> sublist [

	^ self contents sublist
]
