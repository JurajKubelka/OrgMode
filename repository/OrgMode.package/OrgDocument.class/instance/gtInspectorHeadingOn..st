gt-inspector-extension
gtInspectorHeadingOn: composite
	<gtInspectorPresentationOrder: -5>
	^ self heading ifNotNil: [ :aHeading | aHeading gtInspectorHeadingOn: composite ]