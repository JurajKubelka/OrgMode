event handling
passInformationTo: newNode
	newNode parent: self parent.
	newNode attributesAddAll: self attributesOrNil.
	self parent: nil.
	^ newNode
