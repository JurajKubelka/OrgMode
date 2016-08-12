accessing
subheading
	^ subheading ifNil: [ subheading := OrgEmptyHeading uniqueInstance ]