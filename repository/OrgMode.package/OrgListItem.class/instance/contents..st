accessing
contents: anOrgListContent 
	contents ifNotNil: [ contents parent: nil ].
	contents := anOrgListContent.
	anOrgListContent parent: self