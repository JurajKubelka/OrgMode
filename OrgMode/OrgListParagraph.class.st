Class {
	#name : #OrgListParagraph,
	#superclass : #OrgLine,
	#category : #'OrgMode-Nodes'
}

{ #category : #testing }
OrgListParagraph >> isListParagraph [

	^ true
]

{ #category : #printing }
OrgListParagraph >> printAllTextOn: aStream indent: anInteger [

	self printIndent: anInteger on: aStream.
	super printAllTextOn: aStream indent: anInteger
]
