enumerating
selectHeadings: aBlock
	"Deeply enumerate headings and returns those that aBlock returns true."
	| result |
	result := OrderedCollection new.
	self items do: [ :eachHeadingItem |
		(aBlock cull: eachHeadingItem) ifTrue: [ result addLast: eachHeadingItem ].
		result addAll: (eachHeadingItem selectHeadings: aBlock) ].
	^ result