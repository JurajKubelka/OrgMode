Class {
	#name : #OrgProperty,
	#superclass : #OrgNodeWithParent,
	#instVars : [
		'label',
		'contents',
		'end',
		'spaces'
	],
	#category : #'OrgMode-Nodes'
}

{ #category : #accessing }
OrgProperty >> contents [

	^ contents
]

{ #category : #accessing }
OrgProperty >> contents: anObject [

	contents := anObject
]

{ #category : #accessing }
OrgProperty >> end [

	^ end
]

{ #category : #accessing }
OrgProperty >> end: anObject [

	end := anObject
]

{ #category : #testing }
OrgProperty >> isProperty [

	^ true
]

{ #category : #accessing }
OrgProperty >> label: anObject [

	label := anObject
]

{ #category : #printing }
OrgProperty >> printAllTextOn: aStream [

	self printOn: aStream.
	aStream nextPutAll: self end asString
]

{ #category : #accessing }
OrgProperty >> spaces [

	^ spaces
]

{ #category : #accessing }
OrgProperty >> spaces: aString [

	spaces := aString
]

{ #category : #'subclass creation - deprecated' }
OrgProperty >> subclass: aString instanceVariableNames: aString2 classVariableNames: aString3 category: aString4 [ 
	self shouldBeImplemented.
]
