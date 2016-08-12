tests - properties
testHeadingProperty
	super testHeadingProperty.
	self assert: result isProperty.
	self assert: result label equals: 'VideoFile'.
	self assert: result contents equals: 'dir/screen-recording.mov'.
	self assertText.