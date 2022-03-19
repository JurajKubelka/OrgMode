Class {
	#name : #OrgGlobalSpecialProperty,
	#superclass : #OrgProperty,
	#category : #'OrgMode-Nodes'
}

{ #category : #printing }
OrgGlobalSpecialProperty >> printOn: aStream [

	aStream
		nextPutAll: '#+';
		nextPutAll: self label;
		nextPut: $:;
		space;
		nextPutAll: self contents
]
