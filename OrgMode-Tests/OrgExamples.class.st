Class {
	#name : #OrgExamples,
	#superclass : #Object,
	#category : #'OrgMode-Tests'
}

{ #category : #'examples - org contents' }
OrgExamples class >> headingAndLists2 [

	^ 'Any text 1.
* Any head 1
** Any head 2
any text
* Sessions
** Session Title 1
Session description 1.
*** Transcription
1. 03:45-06:24 Some text Q"Specific question" GQ"General question" c"keyword1" another text.
   1. 04:03-04:15 another c"keyword1" text
   2. 04:23-05:12 another text2 c"keyword2"
2. 06:24-07:23 c"keyword3" another text3
** Session Title 2
Session description 2.
*** Transcription
1. 03:45-06:24 Some text c"keyword1" Q"Specific question 1" GQ"General question 2" another text 2.
   1. 04:03-04:15 another text 3.
   2. 04:23-05:12 another text c"keyword3" 4.
2. 06:24-07:23 another text 5.
'
]

{ #category : #'examples - org contents' }
OrgExamples class >> headingAndLists3 [

	^ 'Any text 1.
* Any head 1
** Any head 2
any text
* Sessions
** Session Title 1
Session description 1.
*** Transcription
1. 03:45-06:24 Some text Q"Specific question" GQ"General question" c"keyword1" another text.
   1. 04:03-04:15 another c"keyword1" text
   2. 04:23-05:12 another text2 Q"Specific question 3" c"keyword2" GQ"General question 3"
2. 06:24-07:23 c"keyword3" another text3
** Session Title 2
Session description 2.
*** Transcription
1. 03:45-06:24 Some text c"keyword1" Q"Specific question 1" GQ"General question 2" another text 2.
   1. 04:03-04:15 Q"Specific question 4" GQ"General question 4" Q"Specific question 5" GQ"General question 5" another text 3.
   2. 04:23-05:12 another text c"keyword3" 4.
2. 06:24-07:23 another text 5.
   1. 06:24-06:35 another text 6
   2. 06:35-07:01 Q"Specific question 6" GQ"General question 6"
'
]

{ #category : #'examples - headings' }
OrgExamples class >> headingOne [

	^ '* top heading'
]

{ #category : #'examples - org contents' }
OrgExamples class >> headingsAndLists [

	^ '
	This is an example file for use by the Org-mode tests.

* heading 1a
** heading 2a
any text
here
** heading 2b
1. list item one
   1. list item one one
   2. list item one two
2. list item two
* heading 1b
any other text
'
]

{ #category : #'examples - org contents' }
OrgExamples class >> normal [

	^ '#+TITLE: Example file
#+OPTIONS: num:nil ^:nil
#+STARTUP: hideblocks

This is an example file for use by the Org-mode tests.

* top
** code block
   :PROPERTIES: 
   :tangle:   yes
   :CUSTOM_ID: code-block-section
   :END:      
   Here are a couple of code blocks.
   
   #+begin_src emacs-lisp :tangle no
  ;; 94839181-184f-4ff4-a72f-94214df6f5ba
  (message "I am code")
   #+end_src
* accumulating properties in drawers
  :PROPERTIES: 
  :var+:     bar=2
  :var:      foo=1
  :ID:       75282ba2-f77a-4309-a970-e87c149fe125
  :END:      
  
  #+begin_src emacs-lisp :results silent
 (list bar foo)
  #+end_src
'
]

{ #category : #'examples - headings' }
OrgExamples class >> sectionOneTextTwoTextOneText [

	^ '* top
line one
** code block
line two
line three
* accumulating properties in drawers
line four'
]

{ #category : #'examples - headings' }
OrgExamples class >> sectionOneTwoOne [

	^ '* top
** code block
* accumulating properties in drawers'
]

{ #category : #'examples - headings' }
OrgExamples class >> sectionOneTwoThree [

	^ '* top
** code block
*** accumulating properties in drawers'
]

{ #category : #'examples - unspecified lines' }
OrgExamples class >> unspecificLineWithEof [

	^ 'any wierd text'
]

{ #category : #'examples - unspecified lines' }
OrgExamples class >> unspecificLineWithNewLine [

	^ 'any wierd text
'
]

{ #category : #'examples - unspecified lines' }
OrgExamples class >> unspecificTwoLines [

	^ 'line one
line two'
]

{ #category : #'examples - org contents' }
OrgExamples >> headingAndLists2 [

	^ 'Any text 1.
* Any head 1
** Any head 2
any text
* Sessions
** Session Title 1
Session description 1.
*** Transcription
1. 03:45-06:24 Some text Q"Specific question" GQ"General question" c"keyword1" another text.
   1. 04:03-04:15 another c"keyword1" text
   2. 04:23-05:12 another text2 c"keyword2"
2. 06:24-07:23 c"keyword3" another text3
** Session Title 2
Session description 2.
*** Transcription
1. 03:45-06:24 Some text c"keyword1" Q"Specific question 1" GQ"General question 2" another text 2.
   1. 04:03-04:15 another text 3.
   2. 04:23-05:12 another text c"keyword3" 4.
2. 06:24-07:23 another text 5.
'
]
