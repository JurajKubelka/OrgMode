Class {
	#name : #OrgHeadingProperty,
	#superclass : #OrgProperty,
	#category : #'OrgMode-Nodes'
}

{ #category : #accessing }
OrgHeadingProperty >> label [
	^ label
]

{ #category : #printing }
OrgHeadingProperty >> printOn: aStream [

	aStream
		nextPut: $:;
		nextPutAll: self label;
		nextPut: $:;
		nextPutAll: self spaces;
		nextPutAll: self contents
]
