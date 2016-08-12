accessing
body: aCollectionOrNil
	body ifNotNil: [ body do: [ :each | each parent: nil ] ].
	body := aCollectionOrNil.
	aCollectionOrNil ifNotNil: [ aCollectionOrNil do: [ :each | each parent: self ] ]