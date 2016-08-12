accessing
properties
	^ properties ifNil: [ properties := OrgEmptyProperties uniqueInstance ]