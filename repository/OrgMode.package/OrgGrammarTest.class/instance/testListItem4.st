tests - list
testListItem4
	"Its hard to se, but abc, def, and ghi start at the same column!"
	source := 
'2. abc
   def
   ghi'.

	self parse: source rule: #listItem.