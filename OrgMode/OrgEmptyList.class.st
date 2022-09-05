Class {
	#name : #OrgEmptyList,
	#superclass : #OrgAbstractList,
	#classInstVars : [
		'uniqueInstance'
	],
	#category : #'OrgMode-Nodes'
}

{ #category : #cleanup }
OrgEmptyList class >> cleanUp: aggressive [

	self reset
]

{ #category : #cleanup }
OrgEmptyList class >> reset [

	uniqueInstance := nil
]

{ #category : #cleanup }
OrgEmptyList class >> uniqueInstance [

	^ uniqueInstance ifNil: [ uniqueInstance := self new ]
]

{ #category : #accessing }
OrgEmptyList >> items [

	^ #(  )
]

{ #category : #accessing }
OrgEmptyList >> parent [

	self shouldNotImplement
]

{ #category : #accessing }
OrgEmptyList >> parent: anObject [

	self shouldNotImplement
]

{ #category : #accessing }
OrgEmptyList >> printAllTextOn: aStream [

	
]
