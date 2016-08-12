accessing
subheading: anOrgHeadingOrNil 
	subheading ifNotNil: [ subheading parent: nil ].
	subheading := anOrgHeadingOrNil.
	anOrgHeadingOrNil ifNotNil: [ anOrgHeadingOrNil parent: self ]