tests - list
testListMulti
	source := '1. a
   1. b
   2. c
      1. d
   3. e
2. f'.
	self parse: source rule: #list.
