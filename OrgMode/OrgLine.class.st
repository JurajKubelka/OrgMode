Class {
	#name : #OrgLine,
	#superclass : #OrgNodeWithParent,
	#instVars : [
		'end',
		'line'
	],
	#category : #'OrgMode-Nodes'
}

{ #category : #accessing }
OrgLine >> end [

	^ end
]

{ #category : #accessing }
OrgLine >> end: anObject [

	end := anObject
]

{ #category : #testing }
OrgLine >> isLine [

	^ true
]

{ #category : #accessing }
OrgLine >> line [

	^ line
]

{ #category : #accessing }
OrgLine >> line: anObject [

	line := anObject
]

{ #category : #printing }
OrgLine >> printAllTextOn: aStream [

	self printAllTextOn: aStream indent: 0
]

{ #category : #printing }
OrgLine >> printAllTextOn: aStream indent: anInteger [

	aStream nextPutAll: self line.
	self end ifNotNil: [ aStream nextPut: self end ]
]
