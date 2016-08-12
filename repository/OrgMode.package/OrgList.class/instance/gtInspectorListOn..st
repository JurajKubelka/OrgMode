gt-inspector-extension
gtInspectorListOn: composite
	<gtInspectorPresentationOrder: 9>
	^ self items ifNotNil: [ :aCollection |
		(aCollection gtInspectorItemsIn: composite)
			title: 'List' ]	