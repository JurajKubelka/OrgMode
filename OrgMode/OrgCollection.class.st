Class {
	#name : #OrgCollection,
	#superclass : #OrderedCollection,
	#instVars : [
		'parent'
	],
	#category : #'OrgMode-Extra'
}

{ #category : #accessing }
OrgCollection >> document [

	^ self parent document
]

{ #category : #accessing }
OrgCollection >> parent [

	^ parent
]

{ #category : #accessing }
OrgCollection >> parent: aNode [

	parent := aNode
]
