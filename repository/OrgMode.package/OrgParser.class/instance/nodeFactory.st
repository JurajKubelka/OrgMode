accessing
nodeFactory
	^ self propertyAt: #nodeFactory ifAbsentPut: [ OrgNodeFactory new ]