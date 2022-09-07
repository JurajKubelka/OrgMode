Class {
	#name : #OrgListContent,
	#superclass : #OrgNodeWithParent,
	#instVars : [
		'lines'
	],
	#category : #'OrgMode-Nodes'
}

{ #category : #accessing }
OrgListContent >> line [

	^ self lines first line
]

{ #category : #accessing }
OrgListContent >> lines [

	^ lines
]

{ #category : #accessing }
OrgListContent >> lines: aCollection [ 
	lines := aCollection
]

{ #category : #accessing }
OrgListContent >> listItem [

	^ self parent listItem
]

{ #category : #printing }
OrgListContent >> printAllTextOn: aStream [

	self printAllTextOn: aStream indent: 0
]

{ #category : #printing }
OrgListContent >> printAllTextOn: aStream indent: anInteger [

	self lines first printAllTextOn: aStream.
	self lines allButFirstDo: [ :eachLine | 
		eachLine printAllTextOn: aStream indent: anInteger ]
]

{ #category : #printing }
OrgListContent >> printOn: aStream [

	super printOn: aStream.
	aStream
		space;
		nextPut: $[.
	self lines ifNil: [ aStream nextPutAll: 'empty]' ] ifNotNil: [ 
		aStream
			print: self lines size;
			space;
			nextPutAll: ('line' asPluralBasedOn: self lines);
			nextPut: $] ]
]

{ #category : #accessing }
OrgListContent >> sublist [

	^ self lines last isList
		  ifTrue: [ self lines last ]
		  ifFalse: [ OrgEmptyList uniqueInstance ]
]
