Class {
	#name : #OrgGlobalProperty,
	#superclass : #OrgProperty,
	#category : #'OrgMode-Nodes'
}

{ #category : #printing }
OrgGlobalProperty >> printOn: aStream [

	aStream
		nextPutAll: '#+PROPERTY:';
		space;
		nextPutAll: self label;
		space;
		nextPutAll: self contents
]
