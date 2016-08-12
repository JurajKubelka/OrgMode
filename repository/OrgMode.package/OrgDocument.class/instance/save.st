actions
save
	self fileReference ifNil: [ ^ self ].
	self fileReference parent ensureCreateDirectory.
	self fileReference exists ifTrue: [ | backup |
		backup := self fileReference , 'backup'.
		backup ensureDelete.
		self fileReference moveTo: backup ].
	self fileReference writeStreamDo: [ :aStream |
		self printAllTextOn: aStream ].