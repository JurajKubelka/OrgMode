Class {
	#name : #OrgGlobalProperty,
	#superclass : #OrgProperty,
	#category : #'OrgMode-Nodes'
}

{ #category : #accessing }
OrgGlobalProperty >> label [
	^ label
]

{ #category : #printing }
OrgGlobalProperty >> printOn: aStream [

	aStream
		nextPutAll: '#+PROPERTY:';
		space;
		nextPutAll: self label;
		space;
		nextPutAll: self contents
]
