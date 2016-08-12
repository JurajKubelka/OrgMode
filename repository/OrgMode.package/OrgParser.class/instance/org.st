accessing
org
	^ super org map: [ :aBody :aHeading |
		OrgDocument new
			body: aBody;
			heading: aHeading;
			yourself ]