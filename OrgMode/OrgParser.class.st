Class {
	#name : #OrgParser,
	#superclass : #OrgGrammar,
	#category : #'OrgMode-Parsers'
}

{ #category : #'grammar - basic' }
OrgParser >> bodyOneLine [

	^ super bodyOneLine
	  ==> [ :results | self nodeFactory newBodyOneLine: results ]
]

{ #category : #'grammar - basic' }
OrgParser >> emptyLine [

	^ super emptyLine
	  ==> [ :results | self nodeFactory newEmptyLine: results ]
]

{ #category : #'grammar - properties' }
OrgParser >> globalNamedProperty [
	^ super globalNamedProperty ==> [ :results |
			self nodeFactory newGlobalNamedProperty: results ]
]

{ #category : #'grammar - properties' }
OrgParser >> globalSpecialProperty [

	^ super globalSpecialProperty
	  ==> [ :results | self nodeFactory newSpecialProperty: results ]
]

{ #category : #'grammar - heading' }
OrgParser >> heading [

	^ super heading
	  ==> [ :results | self nodeFactory newHeading: results ]
]

{ #category : #'grammar - heading' }
OrgParser >> headingItem [

	^ super headingItem
	  ==> [ :results | self nodeFactory newHeadingItem: results ]
]

{ #category : #'grammar - heading' }
OrgParser >> headingLabel [

	^ super headingLabel
	  ==> [ :results | self nodeFactory newHeadingLabel: results ]
]

{ #category : #'grammar - properties' }
OrgParser >> headingProperties [

	^ super headingProperties
	  ==> [ :results | self nodeFactory newHeadingProperties: results ]
]

{ #category : #'grammar - properties' }
OrgParser >> headingProperty [

	^ super headingProperty
	  ==> [ :results | self nodeFactory newHeadingProperty: results ]
]

{ #category : #'grammar - lists' }
OrgParser >> list [

	^ super list map: [ :anArray | self nodeFactory newList: anArray ]
]

{ #category : #'grammar - lists' }
OrgParser >> listContent [

	^ super listContent map: [ :contents | 
		  self nodeFactory newListContents: contents ]
]

{ #category : #'grammar - lists' }
OrgParser >> listItem [

	^ super listItem
	  ==> [ :results | self nodeFactory newListItem: results ]
]

{ #category : #'grammar - lists' }
OrgParser >> listParagraph [

	^ super listParagraph
	  ==> [ :results | self nodeFactory newListParagraph: results ]
]

{ #category : #accessing }
OrgParser >> nodeFactory [

	^ self propertyAt: #nodeFactory ifAbsentPut: [ OrgNodeFactory new ]
]

{ #category : #accessing }
OrgParser >> nodeFactory: aOrgNodeFactory [

	^ self propertyAt: #nodeFactory put: aOrgNodeFactory
]

{ #category : #accessing }
OrgParser >> org [

	^ super org map: [ :aBody :aHeading | 
		  OrgDocument new
			  body: aBody;
			  heading: aHeading;
			  yourself ]
]

{ #category : #parsing }
OrgParser >> parseFile: aFileReference [

	^ aFileReference readStreamDo: [ :aStream | self parse: aStream ]
]

{ #category : #parsing }
OrgParser >> parseString: aString [

	^ self parse: aString readStream
]
