accessing
properties: anObject 
	properties ifNotNil: [ properties parent: nil ].
	properties := anObject.
	properties ifNotNil: [ properties parent: self ].
