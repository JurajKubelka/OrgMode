tests - list
testListItem5
	"Its hard to se, but abc and def doe not start at the same column!"
	source := 
'2. abc
  def'.
	self fail: source rule: #listItem.