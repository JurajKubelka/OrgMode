accessing
items: aCollection
	items ifNotNil: [ items do: [ :each | each parent: nil ] ].
	items := aCollection.
	aCollection do: [ :each | each parent: self ].