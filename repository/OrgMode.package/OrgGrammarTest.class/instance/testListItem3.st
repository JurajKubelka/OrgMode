tests - list
testListItem3
	"Its hard to se, but abc and def start at the same column!"
	source := 
'2. abc
   def'.
	self parse: source rule: #listItem.