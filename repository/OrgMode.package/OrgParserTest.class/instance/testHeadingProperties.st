tests - properties
testHeadingProperties
	super testHeadingProperties.
	self assert: result isProperties.
	self assert: result properties size equals: 2.
	self assert: result properties first label 
			equals: 'VideoFile'.
	self assert: result properties first contents 
			equals: 'dir/subdir/screen-recording.mov'.
	self assertText.