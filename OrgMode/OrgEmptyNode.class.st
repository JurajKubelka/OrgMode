Class {
	#name : #OrgEmptyNode,
	#superclass : #OrgNode,
	#classVars : [
		'uniqueInstance'
	],
	#category : #'OrgMode-Nodes'
}

{ #category : #cleanup }
OrgEmptyNode class >> cleanUp [

	uniqueInstance := nil
]

{ #category : #accessing }
OrgEmptyNode class >> uniqueInstance [

	^ uniqueInstance ifNil: [ uniqueInstance := self new ]
]

{ #category : #accessing }
OrgEmptyNode >> parent [

	^ nil
]

{ #category : #printing }
OrgEmptyNode >> printAllTextOn: aWriteStream [

	"do nothing"

	
]
