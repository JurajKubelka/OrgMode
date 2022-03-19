Class {
	#name : #OrgNodeFactory,
	#superclass : #Object,
	#instVars : [
		'lines'
	],
	#category : #'OrgMode-Parsers'
}

{ #category : #'instance creation' }
OrgNodeFactory >> newBodyOneLine: aCollection [

	^ OrgLine new
		  line: aCollection third;
		  end: aCollection fourth;
		  yourself
]

{ #category : #'instance creation' }
OrgNodeFactory >> newEmptyLine: aCollection [

	^ OrgEmptyLine new
		  line: aCollection second;
		  end: aCollection third;
		  yourself
]

{ #category : #'instance creation' }
OrgNodeFactory >> newGlobalNamedProperty: aCollection [

	^ OrgGlobalProperty new
		  label: aCollection fourth;
		  contents: aCollection sixth;
		  end: (aCollection seventh ifNil: [ '' ]);
		  yourself
]

{ #category : #'instance creation' }
OrgNodeFactory >> newHeading: results [

	^ results second isCollection
		  ifTrue: [ 
			  OrgHeading new
				  items: results second;
				  yourself ]
		  ifFalse: [ results second ]
]

{ #category : #'instance creation' }
OrgNodeFactory >> newHeadingItem: results [
	^ results isCollection 
			ifTrue: [ 
				OrgHeadingItem new
					label: results first;
					properties: results second;
					body: results third;
					subheading: results fourth;
					yourself ]
			ifFalse: [ results ]
]

{ #category : #'instance creation' }
OrgNodeFactory >> newHeadingLabel: results [

	^ Array
		  with: (OrgHeadingLabel new
				   level: results first second size;
				   space: results second;
				   label: results third;
				   end: results fourth;
				   yourself)
		  with: results fifth
		  with: results sixth
		  with: results seventh
]

{ #category : #'instance creation' }
OrgNodeFactory >> newHeadingProperties: aCollection [

	^ OrgHeadingProperties new
		  indent: aCollection first;
		  firstEnd:
			  aCollection third second , aCollection third third asString;
		  properties: (aCollection fourth ifNil: [ #(  ) ]);
		  lastEnd: aCollection fifth second
			  , (aCollection fifth third ifNotNil: #asString ifNil: [ '' ]);
		  yourself
]

{ #category : #'instance creation' }
OrgNodeFactory >> newHeadingProperty: aCollection [

	^ OrgHeadingProperty new
		  label: aCollection second;
		  spaces: aCollection fourth;
		  contents: aCollection fifth;
		  end: (aCollection sixth ifNil: [ '' ]);
		  yourself
]

{ #category : #'instance creation' }
OrgNodeFactory >> newList: anArray [

	^ OrgList new
		  items: anArray;
		  yourself
]

{ #category : #'instance creation' }
OrgNodeFactory >> newListContents: contents [

	^ OrgListContent new
		  lines: contents;
		  yourself
]

{ #category : #'instance creation' }
OrgNodeFactory >> newListItem: results [

	^ OrgListItem new
		  index: results first first asNumber;
		  separator: results first second;
		  space: results first third;
		  contents: results second;
		  indent: results first first size + 1 + results first third size;
		  yourself
]

{ #category : #'instance creation' }
OrgNodeFactory >> newListParagraph: results [

	^ OrgListParagraph new
		  line: results first;
		  end: results second;
		  yourself
]

{ #category : #'instance creation' }
OrgNodeFactory >> newSpecialProperty: aCollection [

	^ OrgGlobalSpecialProperty new
		  label: aCollection third;
		  contents: aCollection sixth;
		  end: (aCollection seventh ifNil: [ '' ]);
		  yourself
]
