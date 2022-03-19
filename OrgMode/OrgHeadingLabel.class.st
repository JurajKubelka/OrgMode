Class {
	#name : #OrgHeadingLabel,
	#superclass : #OrgNodeWithParent,
	#instVars : [
		'level',
		'space',
		'label',
		'end'
	],
	#category : #'OrgMode-Nodes'
}

{ #category : #accessing }
OrgHeadingLabel >> end [

	^ end
]

{ #category : #accessing }
OrgHeadingLabel >> end: anObject [

	end := anObject
]

{ #category : #accessing }
OrgHeadingLabel >> label [

	^ label
]

{ #category : #accessing }
OrgHeadingLabel >> label: aString [

	label := aString
]

{ #category : #accessing }
OrgHeadingLabel >> level [

	^ level
]

{ #category : #accessing }
OrgHeadingLabel >> level: anInteger [

	level := anInteger
]

{ #category : #printing }
OrgHeadingLabel >> printAllTextOn: aStream [

	self level timesRepeat: [ aStream nextPut: $* ].
	aStream
		nextPutAll: self space;
		nextPutAll: self label.
	self end ifNotNil: [ aStream nextPut: self end ]
]

{ #category : #accessing }
OrgHeadingLabel >> space [

	^ space
]

{ #category : #accessing }
OrgHeadingLabel >> space: aString [

	space := aString
]
