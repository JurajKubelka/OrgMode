Class {
	#name : #OrgNodeWithParent,
	#superclass : #OrgNode,
	#instVars : [
		'parent'
	],
	#category : #'OrgMode-Nodes'
}

{ #category : #accessing }
OrgNodeWithParent >> document [

	^ self parent document
]

{ #category : #accessing }
OrgNodeWithParent >> headingParent [

	^ self parent headingParent
]

{ #category : #accessing }
OrgNodeWithParent >> meaningfulParent [

	^ self parent
]

{ #category : #accessing }
OrgNodeWithParent >> parent [
	^ parent
]

{ #category : #accessing }
OrgNodeWithParent >> parent: anObject [

	parent := anObject
]

{ #category : #accessing }
OrgNodeWithParent >> predecessors [

	| predecessors predecessor |
	predecessors := OrderedCollection new.
	predecessor := self parent.
	[ predecessor parent == predecessor ] whileFalse: [ 
		predecessors addLast: predecessor.
		predecessor := predecessor parent ].
	predecessors addLast: predecessor.
	^ predecessors asArray
]
