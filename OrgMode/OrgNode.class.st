Class {
	#name : #OrgNode,
	#superclass : #Object,
	#traits : 'TOrgRecompileNode + TOrgAttributes',
	#classTraits : 'TOrgRecompileNode classTrait + TOrgAttributes classTrait',
	#instVars : [
		'attributes'
	],
	#category : #'OrgMode-Nodes'
}

{ #category : #'accessing - attributes' }
OrgNode >> attributes [

	^ attributes ifNil: [ attributes := Dictionary new ]
]

{ #category : #'accessing - attributes' }
OrgNode >> attributesOrNil [

	^ attributes
]

{ #category : #'gt-inspector-extension' }
OrgNode >> gtInspectorPredecessorsIn: composite [

	<gtInspectorPresentationOrder: 9>
	^ OrgGTInspectorIntegration uniqueInstance
		  parentListIn: composite
		  node: self
]

{ #category : #'gt-inspector-extension' }
OrgNode >> gtInspectorTextOn: composite [

	<gtInspectorPresentationOrder: 1>
	^ OrgGTInspectorIntegration uniqueInstance
		  textOn: composite
		  node: self
]

{ #category : #testing }
OrgNode >> isList [

	^ false
]

{ #category : #testing }
OrgNode >> isListParagraph [

	^ false
]

{ #category : #testing }
OrgNode >> isProperty [

	^ false
]

{ #category : #accessing }
OrgNode >> parser [

	^ OrgParser new
]

{ #category : #'event handling' }
OrgNode >> passInformationTo: newNode [

	newNode parent: self parent.
	newNode attributesAddAll: self attributesOrNil.
	self parent: nil.
	^ newNode
]

{ #category : #printing }
OrgNode >> printAllTextOn: aStream [

	self subclassResponsibility
]

{ #category : #printing }
OrgNode >> printIndent: anInteger on: aStream [

	anInteger timesRepeat: [ aStream nextPut: Character space ]
]

{ #category : #accessing }
OrgNode >> text [

	^ String streamContents: [ :aStream | self printAllTextOn: aStream ]
]
