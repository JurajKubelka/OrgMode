Class {
	#name : #OrgGrammar,
	#superclass : #PPCompositeParser,
	#traits : 'TOrgParseRule',
	#classTraits : 'TOrgParseRule classTrait',
	#instVars : [
		'lineEnd',
		'body',
		'bodyOneLine',
		'headingBullet',
		'headingItem',
		'headingEnd',
		'headingPush',
		'headingPop',
		'headingStart',
		'org',
		'list',
		'listStart',
		'listItem',
		'listEnd',
		'indentPrefix',
		'listContent',
		'listContentElement',
		'listParagraph',
		'emptyLine',
		'line',
		'blank',
		'listNumbering',
		'heading',
		'headingLabel',
		'startOfLine',
		'globalNamedProperty',
		'propertyName',
		'globalSpecialProperty',
		'headingPropertiesStart',
		'headingPropertiesEnd',
		'headingProperties',
		'headingProperty',
		'globalProperty'
	],
	#category : #'OrgMode-Parsers'
}

{ #category : #'grammar - basic' }
OrgGrammar >> blank [

	^ #blank asParser
]

{ #category : #'grammar - body' }
OrgGrammar >> body [

	^ (globalProperty / list / bodyOneLine) plus
]

{ #category : #'grammar - basic' }
OrgGrammar >> bodyOneLine [

	^ (startOfLine , headingBullet not , lineEnd negate star flatten
	   , lineEnd) nonEmpty
]

{ #category : #'grammar - basic' }
OrgGrammar >> emptyLine [

	^ #startOfLine asParser , blank star flatten , lineEnd
]

{ #category : #'grammar - properties' }
OrgGrammar >> globalNamedProperty [

	^ startOfLine , '#+PROPERTY:' asParser , blank plus , propertyName
	  , blank plus , line , lineEnd
]

{ #category : #'grammar - properties' }
OrgGrammar >> globalProperty [

	^ globalNamedProperty / globalSpecialProperty
]

{ #category : #'grammar - properties' }
OrgGrammar >> globalSpecialProperty [

	^ startOfLine , '#+' asParser , propertyName , $: asParser
	  , blank plus , line , lineEnd
]

{ #category : #'grammar - heading' }
OrgGrammar >> heading [

	^ headingStart , headingItem nonEmpty star , headingEnd
]

{ #category : #'grammar - heading' }
OrgGrammar >> headingBullet [

	^ $* asParser
]

{ #category : #'grammar - heading' }
OrgGrammar >> headingEnd [

	"push pushes the '*' parser onto the indentation stack"

	^ headingPop
]

{ #category : #'grammar - heading' }
OrgGrammar >> headingItem [

	^ heading / headingLabel
]

{ #category : #'grammar - heading' }
OrgGrammar >> headingLabel [

	^ indentPrefix , #space asParser plus flatten
	  , lineEnd negate plus flatten , lineEnd
	  , headingProperties optional , body optional , heading optional
]

{ #category : #'grammar - heading' }
OrgGrammar >> headingPop [

	^ headingBullet pop
]

{ #category : #'grammar - properties' }
OrgGrammar >> headingProperties [

	^ blank plus flatten , #setIl asParser , headingPropertiesStart
	  , headingProperty trimAlign plus , headingPropertiesEnd trimAlign
	  , #restoreIl asParser
]

{ #category : #'grammar - properties' }
OrgGrammar >> headingPropertiesEnd [

	^ ':END:' asParser flatten , blank star flatten , lineEnd
]

{ #category : #'grammar - properties' }
OrgGrammar >> headingPropertiesStart [

	^ ':PROPERTIES:' asParser flatten , blank star flatten , lineEnd
]

{ #category : #'grammar - properties' }
OrgGrammar >> headingProperty [

	^ $: asParser , propertyName , $: asParser , blank plus flatten
	  , line , lineEnd
]

{ #category : #'grammar - heading' }
OrgGrammar >> headingPush [

	^ [ :context | context indentStack push: headingBullet ] asParser
]

{ #category : #'grammar - heading' }
OrgGrammar >> headingStart [

	"Check if there is an extra bullet, if so, push, but do not consume!"

	^ (indentPrefix , headingBullet) and , headingPush
]

{ #category : #'grammar - basic' }
OrgGrammar >> indentPrefix [

	^ #prefix asParser
]

{ #category : #'grammar - basic' }
OrgGrammar >> line [

	^ #endOfLine asParser negate plus flatten
]

{ #category : #'grammar - basic' }
OrgGrammar >> lineEnd [

	^ #newline asParser / (#eof asParser map: [ :val | nil ])
]

{ #category : #'grammar - lists' }
OrgGrammar >> list [

	^ #setIl asParser , listItem , listItem trimAlign star
	  , #restoreIl asParser map: [ :anIndent :anItem :anItems :aDedent | 
		  Array with: anItem withAll: anItems ]
]

{ #category : #'grammar - lists' }
OrgGrammar >> listContent [

	^ listContentElement , listContentElement trimAlign nonEmpty star 
		  map: [ :first :rest | Array with: first withAll: rest ]
]

{ #category : #'grammar - lists' }
OrgGrammar >> listContentElement [

	^ list / listParagraph / emptyLine
]

{ #category : #'grammar - lists' }
OrgGrammar >> listEnd [

	^ #restoreIl asParser
]

{ #category : #'grammar - lists' }
OrgGrammar >> listItem [

	^ listStart , listContent , listEnd
]

{ #category : #'grammar - lists' }
OrgGrammar >> listNumbering [

	^ #digit asParser plus flatten , $. asParser optional
]

{ #category : #'grammar - lists' }
OrgGrammar >> listParagraph [

	^ line , lineEnd
]

{ #category : #'grammar - lists' }
OrgGrammar >> listStart [

	^ listNumbering , blank plus flatten , #setIl asParser map: [ 
		  :_number 
		  :_blank 
		  :_indent | 
		  Array with: _number first with: _number second with: _blank ]
]

{ #category : #accessing }
OrgGrammar >> org [
	^ body optional, heading optional
]

{ #category : #'grammar - properties' }
OrgGrammar >> propertyName [

	^ (#word asParser / $_ asParser / $- asParser) plus flatten
]

{ #category : #accessing }
OrgGrammar >> start [

	^ org
]

{ #category : #'grammar - basic' }
OrgGrammar >> startOfLine [

	^ #startOfLine asParser
]
