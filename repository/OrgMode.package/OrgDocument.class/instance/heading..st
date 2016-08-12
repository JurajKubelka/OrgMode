accessing
heading: anObjectOrNil
	heading ifNotNil: [ heading parent: nil ].
	heading := anObjectOrNil.
	anObjectOrNil ifNotNil: [ anObjectOrNil parent: self ]