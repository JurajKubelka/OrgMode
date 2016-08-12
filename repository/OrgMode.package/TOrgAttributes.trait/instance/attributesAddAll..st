accessing - attributes
attributesAddAll: aDictionaryOrNil
	aDictionaryOrNil ifNil: [ ^ aDictionaryOrNil ].
	^ self attributes addAll: aDictionaryOrNil