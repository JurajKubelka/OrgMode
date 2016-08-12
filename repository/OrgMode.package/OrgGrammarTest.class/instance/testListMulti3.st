tests - list
testListMulti3
	source := '1. a
   1. b
   20. c
       1. d
       20. e
   300. f
        1. g
20. i'.
	self parse: source rule: #list.
