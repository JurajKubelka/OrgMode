Class {
	#name : #OrgGTInspectorIntegration,
	#superclass : #Object,
	#instVars : [
		'uniqueInstance'
	],
	#classInstVars : [
		'uniqueInstance'
	],
	#category : #'OrgMode-Extra'
}

{ #category : #cleanup }
OrgGTInspectorIntegration class >> cleanUp [

	uniqueInstance := nil
]

{ #category : #accessing }
OrgGTInspectorIntegration class >> uniqueInstance [

	^ uniqueInstance ifNil: [ uniqueInstance := self new ]
]

{ #category : #extensions }
OrgGTInspectorIntegration >> headingOn: composite node: aNode [

	^ composite tree
		  title: 'Heading';
		  display: [ aNode headingItems ];
		  when: [ aNode headingItems notEmpty ];
		  children: [ :aHeadingItem | aHeadingItem headingItems ];
		  format: [ :aHeadingItem | aHeadingItem title ];
		  beMultiple;
		  sendOneOrMultipleAs: OrgCollection
		  updatedBy: [ :aCollection | aCollection parent: aNode parent ]
]

{ #category : #extensions }
OrgGTInspectorIntegration >> listOn: composite node: aNode [

	^ composite tree
		  title: 'List';
		  display: [ aNode listItems ];
		  when: [ aNode listItems notEmpty ];
		  children: [ :aOrgList | aOrgList listItems ];
		  format: [ :aOrgListItem | aOrgListItem line ]
]

{ #category : #extensions }
OrgGTInspectorIntegration >> parentListIn: composite node: aNode [

	^ composite list
		  title: 'Predeccesors';
		  display: [ aNode predecessors ];
		  when: [ aNode parent notNil and: [ aNode predecessors notEmpty ] ]
]

{ #category : #extensions }
OrgGTInspectorIntegration >> parentTextOn: composite node: aOrgNode [

	^ composite text
		  title: 'Parent Text';
		  display: [ aOrgNode meaningfulParent text ];
		  act: [ :aRepresentation :aNode | 
			  aOrgNode meaningfulParent
				  recompileNodeWithNewText: aRepresentation text
				  ui: aRepresentation ]
		  icon: Smalltalk ui icons glamorousAccept entitled:
			  'Accept new text';
		  act: [ aOrgNode document save ]
		  icon: Smalltalk ui icons glamorousSave
		  entitled: 'Save document to disk'
]

{ #category : #extensions }
OrgGTInspectorIntegration >> textOn: composite node: aOrgNode [

	^ composite text
		  title: 'Text';
		  display: [ aOrgNode text ];
		  act: [ :aRepresentation :aNode | 
			  aNode
				  recompileNodeWithNewText: aRepresentation text
				  ui: aRepresentation ]
		  icon: Smalltalk ui icons glamorousAccept entitled:
			  'Accept new text';
		  act: [ :aRepresentation :aNode | aNode document save ]
		  icon: Smalltalk ui icons glamorousSave
		  entitled: 'Save document to disk'
]
