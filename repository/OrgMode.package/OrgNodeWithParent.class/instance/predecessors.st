accessing
predecessors
	| predecessors predecessor |
	predecessors := OrderedCollection new.
	predecessor := self parent.
	[ predecessor parent == predecessor ] whileFalse: [ 
		predecessors addLast: predecessor.
		predecessor := predecessor parent. ].
	predecessors addLast: predecessor.
	^ predecessors asArray