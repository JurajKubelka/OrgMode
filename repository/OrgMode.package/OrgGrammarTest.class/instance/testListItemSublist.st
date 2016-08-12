tests - list
testListItemSublist
	source := 
'1. abc
   1. def
'.
	
	self parse: source rule: #listItem.