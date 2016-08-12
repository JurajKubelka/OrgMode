tests - properties
testHeadingProperties2
	source := '   :PROPERTIES: 
   :tangle:   yes
   :CUSTOM_ID: code-block-section
   :END:      
'.
	self parse: source rule: #headingProperties