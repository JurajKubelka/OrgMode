tests - list
testListContent
	context indentStack push: (PPCompareParser on: [:ctx | ctx column = 1 ]).
	source := '
hi
there
'.
	self parse: source rule: #listContent.
