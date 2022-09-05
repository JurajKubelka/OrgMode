Class {
	#name : #OrgGrammarTest,
	#superclass : #PPCompositeParserTest,
	#instVars : [
		'context',
		'source'
	],
	#category : #'OrgMode-Tests'
}

{ #category : #accessing }
OrgGrammarTest >> context [
	^ context
]

{ #category : #accessing }
OrgGrammarTest >> parserClass [
	^ OrgGrammar
]

{ #category : #running }
OrgGrammarTest >> setUp [
	super setUp.
	context := PPContext new.
]

{ #category : #'tests - properties' }
OrgGrammarTest >> testBodyOneLine [

	source := 'abc efg'.
	self parse: source rule: #bodyOneLine
]

{ #category : #'tests - basic' }
OrgGrammarTest >> testBodyOneLine2 [

	source := 'abc efg' , String cr.
	self parse: source rule: #bodyOneLine
]

{ #category : #'tests - properties' }
OrgGrammarTest >> testGlobalNamedProperty [

	source := '#+PROPERTY: RootDir1 This/is/a/long/directory/'.
	self parse: source rule: #globalNamedProperty
]

{ #category : #'tests - properties' }
OrgGrammarTest >> testGlobalNamedProperty2 [

	source := '#+PROPERTY: RootDir1 This/is/a/long/directory/
'.
	self parse: source rule: #globalNamedProperty
]

{ #category : #'tests - properties' }
OrgGrammarTest >> testGlobalSpecialProperty [

	source := '#+LANGUAGE: en'.
	self parse: source rule: #globalSpecialProperty
]

{ #category : #'tests - properties' }
OrgGrammarTest >> testGlobalSpecialProperty2 [

	source := '#+LANGUAGE: en
'.
	self parse: source rule: #globalSpecialProperty
]

{ #category : #'tests - heading' }
OrgGrammarTest >> testHeading [

	source := '* Foo'.
	self parse: source rule: #heading
]

{ #category : #'tests - heading' }
OrgGrammarTest >> testHeading2 [

	source := '** Foo'.
	self parse: source rule: #heading
]

{ #category : #'tests - heading' }
OrgGrammarTest >> testHeading3 [

	self parse: '*** Foo' rule: #heading
]

{ #category : #'tests - heading' }
OrgGrammarTest >> testHeadingEmpty [

	self fail: '*' rule: #heading.
	self fail: '* ' rule: #heading.
	self parse: '* a' rule: #heading
]

{ #category : #'tests - heading' }
OrgGrammarTest >> testHeadingMulti [

	source := '* 1
** 2
*** 3
** 4
** 5
** 6
* 7
'.
	self parse: source rule: #heading
]

{ #category : #'tests - heading' }
OrgGrammarTest >> testHeadingMulti2 [

	source := '* 1
*** 2
'.
	self parse: source rule: #heading
]

{ #category : #'tests - properties' }
OrgGrammarTest >> testHeadingProperties [

	source := '   :PROPERTIES:
   :VideoFile: dir/subdir/screen-recording.mov
   :property1: value one
   :END:'.
	self parse: source rule: #headingProperties
]

{ #category : #'tests - properties' }
OrgGrammarTest >> testHeadingProperties2 [

	source := '   :PROPERTIES: 
   :tangle:   yes
   :CUSTOM_ID: code-block-section
   :END:      
'.
	self parse: source rule: #headingProperties
]

{ #category : #'tests - properties' }
OrgGrammarTest >> testHeadingPropertiesWithSpaces [

	source := '   :PROPERTIES:    
   :VideoFile:  dir/screen-recording.mov   
   :property1:    value one      
   :END:    '.
	self parse: source rule: #headingProperties
]

{ #category : #'tests - properties' }
OrgGrammarTest >> testHeadingProperty [

	source := ':VideoFile: dir/screen-recording.mov'.
	self parse: source rule: #headingProperty
]

{ #category : #'tests - heading' }
OrgGrammarTest >> testHeadingWithBodyAndList [

	source := '* Foo
body 1
body 2
1. list one
2. list two
another body
anotehr body 2'.
	self parse: source rule: #heading
]

{ #category : #'tests - heading' }
OrgGrammarTest >> testHeadingWithList [

	source := '* Foo
1. list one'.
	self parse: source rule: #heading
]

{ #category : #'tests - heading' }
OrgGrammarTest >> testHeadingWithListAndBody [

	source := '* Foo
text 1
text 2
1. list one
text 3
text 4'.
	self parse: source rule: #heading
]

{ #category : #'tests - heading' }
OrgGrammarTest >> testHeadingWithProperties [

	source := '* Foo
   :PROPERTIES:
   :prop1: value one
   :END:'.
	self parse: source rule: #heading
]

{ #category : #'tests - heading' }
OrgGrammarTest >> testHeadingWithProperties2 [

	source := '* Foo
   :PROPERTIES:
   :prop1: value one
   :END:
body'.
	self parse: source rule: #heading
]

{ #category : #'tests - heading' }
OrgGrammarTest >> testHeadingWithProperties3 [

	source := '* Bar
** Foo
   :PROPERTIES:
   :prop1: value one
   :END:
body'.
	self parse: source rule: #heading
]

{ #category : #'tests - heading' }
OrgGrammarTest >> testHeadingWithSubList [

	self
		parse: '* Foo
** Bar'
		rule: #heading
]

{ #category : #'tests - heading' }
OrgGrammarTest >> testHeadingWithTwoItems [

	self
		parse: '* Foo
* Bar'
		rule: #heading
]

{ #category : #'tests - heading' }
OrgGrammarTest >> testHeadingWithTwoItemsAndBody [

	source := '* Foo
hola
cao
* Bar'.
	self parse: source rule: #heading
]

{ #category : #'tests - heading' }
OrgGrammarTest >> testHeadingWithTwoItemsAndBody2 [

	source := '* Foo
 hola
* Bar'.
	self parse: source rule: #heading
]

{ #category : #'tests - heading' }
OrgGrammarTest >> testHeadingWithTwoItemsAndBody3 [

	source := '* Foo
 hola
** Heading
cao
* Bar'.
	self parse: source rule: #heading
]

{ #category : #'tests - heading' }
OrgGrammarTest >> testHeadingWithTwoItemsAndBody4 [

	source := '* Foo
 hola

** Heading
cao
* Bar'.
	self parse: source rule: #heading
]

{ #category : #'tests - heading' }
OrgGrammarTest >> testHeadingWithTwoItemsAndBody5 [

	source := '* Foo
** Foo2
 :anything:
 other
* Bar'.
	self parse: source rule: #heading
]

{ #category : #'tests - heading' }
OrgGrammarTest >> testHeadingWithTwoItemsAndBody5org [

	source := '* Foo
** Foo2
 :anything:
 other
* Bar'.
	self parse: source rule: #org
]

{ #category : #'tests - list' }
OrgGrammarTest >> testList [

	source := '1. abc'.
	self parse: source rule: #list
]

{ #category : #'tests - list' }
OrgGrammarTest >> testList1 [

	source := '1. a
2. b
3. c
'.
	self parse: source rule: #list
]

{ #category : #'tests - list' }
OrgGrammarTest >> testListContent [

	context indentStack push:
		(PPCompareParser on: [ :ctx | ctx column = 1 ]).
	source := '
hi
there
'.
	self parse: source rule: #listContent
]

{ #category : #'tests - list' }
OrgGrammarTest >> testListContentElement [

	source := 'a'.
	self parse: 'a' rule: #listContentElement
]

{ #category : #'tests - list' }
OrgGrammarTest >> testListContentElement2 [

	source := 'a' , String cr.
	self parse: source rule: #listContentElement
]

{ #category : #'tests - list' }
OrgGrammarTest >> testListItem [

	source := '1. abc'.
	self parse: source rule: #listItem
]

{ #category : #'tests - list' }
OrgGrammarTest >> testListItem2 [

	source := '1. abc' , String cr.
	self parse: source rule: #listItem
]

{ #category : #'tests - list' }
OrgGrammarTest >> testListItem3 [

	"Its hard to se, but abc and def start at the same column!"

	source := '2. abc
   def'.
	self parse: source rule: #listItem
]

{ #category : #'tests - list' }
OrgGrammarTest >> testListItem4 [

	"Its hard to se, but abc, def, and ghi start at the same column!"

	source := '2. abc
   def
   ghi'.

	self parse: source rule: #listItem
]

{ #category : #'tests - list' }
OrgGrammarTest >> testListItem5 [

	"Its hard to se, but abc and def doe not start at the same column!"

	source := '2. abc
  def'.
	self fail: source rule: #listItem
]

{ #category : #'tests - list' }
OrgGrammarTest >> testListItemSublist [

	source := '1. abc
   1. def
'.

	self parse: source rule: #listItem
]

{ #category : #'tests - list' }
OrgGrammarTest >> testListMulti [

	source := '1. a
   1. b
   2. c
      1. d
   3. e
2. f'.
	self parse: source rule: #list
]

{ #category : #'tests - list' }
OrgGrammarTest >> testListMulti2 [

	source := '1. a
   1. b'.
	self parse: source rule: #list
]

{ #category : #'tests - list' }
OrgGrammarTest >> testListMulti3 [

	source := '1. a
   1. b
   20. c
       1. d
       20. e
   300. f
        1. g
20. i'.
	self parse: source rule: #list
]

{ #category : #'tests - list' }
OrgGrammarTest >> testListParagraph [

	source := 'a'.
	self parse: source rule: #listParagraph
]

{ #category : #'tests - list' }
OrgGrammarTest >> testListParagraph2 [

	source := 'a' , String cr.
	self parse: source rule: #listParagraph
]

{ #category : #'tests - org' }
OrgGrammarTest >> testOrgHeadingsAndLists [

	source := OrgExamples headingsAndLists.
	self parse: source rule: #org
]

{ #category : #'tests - org' }
OrgGrammarTest >> testOrgHeadingsAndLists2 [

	source := OrgExamples headingAndLists2.
	self parse: source rule: #org
]

{ #category : #'tests - org' }
OrgGrammarTest >> testOrgNormal [

	source := OrgExamples normal.
	self parse: source rule: #org
]
