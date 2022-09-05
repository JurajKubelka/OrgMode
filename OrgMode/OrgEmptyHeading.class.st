Class {
	#name : #OrgEmptyHeading,
	#superclass : #OrgAbstractHeading,
	#classVars : [
		'uniqueInstance'
	],
	#classInstVars : [
		'uniqueInstance'
	],
	#category : #'OrgMode-Nodes'
}

{ #category : #cleanup }
OrgEmptyHeading class >> cleanUp: aggressive [

	self reset
]

{ #category : #accessing }
OrgEmptyHeading class >> reset [

	uniqueInstance := nil
]

{ #category : #accessing }
OrgEmptyHeading class >> uniqueInstance [

	^ uniqueInstance ifNil: [ uniqueInstance := self new ]
]

{ #category : #accessing }
OrgEmptyHeading >> items [

	^ #(  )
]

{ #category : #accessing }
OrgEmptyHeading >> parent [

	^ nil
]

{ #category : #accessing }
OrgEmptyHeading >> parent: aNode [

	self shouldNotImplement
]

{ #category : #printing }
OrgEmptyHeading >> printAllTextOn: astream [

	
]

{ #category : #enumerating }
OrgEmptyHeading >> selectHeadings: aBlock [

	"Deeply enumerate headings and returns those that aBlock returns true."

	^ #(  )
]
