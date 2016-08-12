tests - heading
testHeadingMulti
	source := '* 1
** 2
*** 3
** 4
** 5
** 6
* 7
'.
	self parse: source rule: #heading.