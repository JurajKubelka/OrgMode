Class {
	#name : #OrgParserTest,
	#superclass : #OrgGrammarTest,
	#category : #'OrgMode-Tests'
}

{ #category : #asserting }
OrgParserTest >> assertText [

	self assert: result text equals: source
]

{ #category : #testing }
OrgParserTest >> expectedFailures [

	"We do not need not to handle properly it."

	^ #( testHeading2 testHeading3 )
]

{ #category : #accessing }
OrgParserTest >> parserClass [

	^ OrgParser
]

{ #category : #'tests - basic' }
OrgParserTest >> testBodyOneLine [

	super testBodyOneLine.
	self assert: result isLine.
	self assertText
]

{ #category : #'tests - basic' }
OrgParserTest >> testBodyOneLine2 [

	super testBodyOneLine2.
	self assert: result isLine.
	self assertText
]

{ #category : #'tests - properties' }
OrgParserTest >> testGlobalNamedProperty [

	super testGlobalNamedProperty.
	self assert: result isProperty.
	self assert: result label equals: 'RootDir1'.
	self assert: result contents equals: 'This/is/a/long/directory/'.
	self assertText
]

{ #category : #'tests - properties' }
OrgParserTest >> testGlobalNamedProperty2 [

	super testGlobalNamedProperty2.
	self assert: result isProperty.
	self assert: result label equals: 'RootDir1'.
	self assert: result contents equals: 'This/is/a/long/directory/'.
	self assertText
]

{ #category : #'tests - properties' }
OrgParserTest >> testGlobalSpecialProperty2 [

	super testGlobalSpecialProperty2.
	self assert: result isProperty.
	self assert: result label equals: 'LANGUAGE'.
	self assert: result contents equals: 'en'.
	self assertText
]

{ #category : #'tests - heading' }
OrgParserTest >> testHeading [

	super testHeading.
	self assert: result isHeading.
	self assert: result items size equals: 1.
	self assert: result items first isHeadingItem.
	self assert: result items first heading equals: 'Foo'.
	self assert: result items first level equals: 1.
	self assertText
]

{ #category : #'tests - heading' }
OrgParserTest >> testHeading2 [

	super testHeading2.
	self assert: result isHeading.
	self assert: result items size equals: 1.
	self assert: result items first isHeadingItem.
	self assert: result items first heading equals: 'Foo'.
	self assert: result items first level equals: 2.
	self assertText
]

{ #category : #'tests - heading' }
OrgParserTest >> testHeading3 [

	super testHeading3.
	self assert: result isHeading.
	self assert: result items size equals: 1.
	self assert: result items first isHeadingItem.
	self assert: result items first heading equals: 'Foo'.
	self assert: result items first level equals: 3.
	self assertText
]

{ #category : #'tests - heading' }
OrgParserTest >> testHeadingMulti [

	super testHeadingMulti.
	self assert: result isHeading.
	self assert: result items size equals: 2.
	self assert: result items first isHeadingItem.
	self assert: result items first heading equals: '1'.
	self assert: result items first level equals: 1.
	self assert: result items second isHeadingItem.
	self assert: result items second heading equals: '7'.
	self assert: result items second level equals: 1.
	self assertText
]

{ #category : #'tests - heading' }
OrgParserTest >> testHeadingMulti2 [

	super testHeadingMulti2.
	self assert: result isHeading.
	self assert: result items size equals: 1.
	self assert: result items first isHeadingItem.
	self assert: result items first heading equals: '1'.
	self assert: result items first level equals: 1.
	self assertText
]

{ #category : #'tests - properties' }
OrgParserTest >> testHeadingProperties [

	super testHeadingProperties.
	self assert: result isProperties.
	self assert: result properties size equals: 2.
	self assert: result properties first label equals: 'VideoFile'.
	self
		assert: result properties first contents
		equals: 'dir/subdir/screen-recording.mov'.
	self assertText
]

{ #category : #'tests - properties' }
OrgParserTest >> testHeadingProperties2 [

	super testHeadingProperties2.
	self assert: result isProperties.
	self assert: result properties size equals: 2.
	self assert: result properties first label equals: 'tangle'.
	self assert: result properties first contents equals: 'yes'.
	self assert: result properties second label equals: 'CUSTOM_ID'.
	self
		assert: result properties second contents
		equals: 'code-block-section'.
	self assertText
]

{ #category : #'tests - properties' }
OrgParserTest >> testHeadingProperty [

	super testHeadingProperty.
	self assert: result isProperty.
	self assert: result label equals: 'VideoFile'.
	self assert: result contents equals: 'dir/screen-recording.mov'.
	self assertText
]

{ #category : #'tests - heading' }
OrgParserTest >> testHeadingWithBodyAndList [

	super testHeadingWithBodyAndList.
	self assert: result isHeading.
	self assertText
]

{ #category : #'tests - heading' }
OrgParserTest >> testHeadingWithList [

	super testHeadingWithList.
	self assert: result isHeading.
	self assertText
]

{ #category : #'tests - heading' }
OrgParserTest >> testHeadingWithProperties [

	super testHeadingWithProperties.
	self assert: result isHeading.
	self assert: result items size equals: 1.
	self assert: result items first properties properties size equals: 1.
	self
		assert: (result items first propertyValueAt: #prop1)
		equals: 'value one'.
	self assertText
]

{ #category : #'tests - heading' }
OrgParserTest >> testHeadingWithProperties2 [

	super testHeadingWithProperties2.
	self assert: result isHeading.
	self assert: result items size equals: 1.
	self assert: result items first properties properties size equals: 1.
	self assert: result items first body size equals: 1.
	self assertText
]

{ #category : #'tests - heading' }
OrgParserTest >> testHeadingWithProperties3 [

	super testHeadingWithProperties3.
	self assert: result isHeading.
	self assert: result items size equals: 1.
	self assert: result items first subheading items size equals: 1.
	self
		assert:
		result items first subheading items first properties properties size
		equals: 1.
	self assertText
]

{ #category : #'tests - heading' }
OrgParserTest >> testHeadingWithTwoItemsAndBody2 [

	super testHeadingWithTwoItemsAndBody2.
	self assert: result isHeading.
	self assertText
]

{ #category : #'tests - heading' }
OrgParserTest >> testHeadingWithTwoItemsAndBody3 [

	super testHeadingWithTwoItemsAndBody3.
	self assert: result isHeading.
	self assertText
]

{ #category : #'tests - heading' }
OrgParserTest >> testHeadingWithTwoItemsAndBody4 [

	super testHeadingWithTwoItemsAndBody4.
	self assert: result isHeading.
	self assertText
]

{ #category : #'tests - heading' }
OrgParserTest >> testHeadingWithTwoItemsAndBody5 [

	super testHeadingWithTwoItemsAndBody5.
	self assert: result isHeading.
	self assertText
]

{ #category : #'tests - org' }
OrgParserTest >> testHeadingWithTwoItemsAndBody5org [

	super testHeadingWithTwoItemsAndBody5org.
	self assert: result isDocument.
	self assertText
]
