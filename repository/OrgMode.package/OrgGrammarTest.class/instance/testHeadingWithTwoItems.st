tests - heading
testHeadingWithTwoItems
	self
		parse:
			'* Foo
* Bar'
		rule: #heading