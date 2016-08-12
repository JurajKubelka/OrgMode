tests - heading
testHeadingWithSubList
	self
		parse:
			'* Foo
** Bar'
		rule: #heading