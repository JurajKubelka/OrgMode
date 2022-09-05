Class {
	#name : #OrgHeadingProperty,
	#superclass : #OrgProperty,
	#category : #'OrgMode-Nodes'
}

{ #category : #printing }
OrgHeadingProperty >> printOn: aStream [

	aStream
		nextPut: $:;
		nextPutAll: self label;
		nextPut: $:;
		nextPutAll: self spaces;
		nextPutAll: self contents
]
