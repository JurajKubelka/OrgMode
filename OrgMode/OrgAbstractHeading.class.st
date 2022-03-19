Class {
	#name : #OrgAbstractHeading,
	#superclass : #OrgNodeWithParent,
	#category : #'OrgMode-Nodes'
}

{ #category : #'gt-inspector-extension' }
OrgAbstractHeading >> gtInspectorHeadingOn: composite [

	<gtInspectorPresentationOrder: -5>
	^ OrgGTInspectorIntegration uniqueInstance
		  headingOn: composite
		  node: self
]

{ #category : #accessing }
OrgAbstractHeading >> headingItems [

	^ self items
]

{ #category : #testing }
OrgAbstractHeading >> isHeading [

	^ true
]
