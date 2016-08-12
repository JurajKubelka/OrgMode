accessing
sublist
	^ self lines last isList
		ifTrue: [ self lines last ]
		ifFalse: [ OrgEmptyList uniqueInstance ]