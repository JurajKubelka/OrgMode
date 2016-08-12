accessing
label: anOrgHeadingLabel 
	label ifNotNil: [ label parent: nil ].
	label := anOrgHeadingLabel.
	anOrgHeadingLabel parent: self