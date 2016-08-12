tests - properties
testHeadingPropertiesWithSpaces
	source := '   :PROPERTIES:    
   :VideoFile:  dir/screen-recording.mov   
   :property1:    value one      
   :END:    '.
	self parse: source rule: #headingProperties