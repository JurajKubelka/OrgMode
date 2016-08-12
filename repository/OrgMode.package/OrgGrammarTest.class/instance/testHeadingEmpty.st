tests - heading
testHeadingEmpty
	self fail: '*' rule: #heading.
	self fail: '* ' rule: #heading.
	self parse: '* a' rule: #heading.