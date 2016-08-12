tests - properties
testHeadingProperties
	source := '   :PROPERTIES:
   :VideoFile: dir/subdir/screen-recording.mov
   :property1: value one
   :END:'.
	self parse: source rule: #headingProperties