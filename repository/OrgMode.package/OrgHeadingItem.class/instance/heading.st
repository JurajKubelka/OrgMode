accessing
heading
	^ self label 
		ifNotNil: [ :aHeadingLabel | aHeadingLabel label ]
		ifNil: [ '<empty>' ]