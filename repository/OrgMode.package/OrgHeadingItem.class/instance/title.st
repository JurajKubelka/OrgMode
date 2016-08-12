accessing
title
	^ self label 
		ifNotNil: [ :aLabel | aLabel label ]
		ifNil: [ '<undefined title>' ]