accessing
properties: aCollection
	properties ifNotNil: [ properties do: [ :e | e parent: nil ] ].
	properties := aCollection.
	properties do: [ :e | e parent: self ].