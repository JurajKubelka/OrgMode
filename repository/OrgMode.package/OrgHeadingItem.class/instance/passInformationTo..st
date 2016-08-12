event handling
passInformationTo: newNode
	"The current OrgParser creates empty OrgHeading objects when a heading starts with more then one star.
	E.g., *** Third heading.
	So, we need to dive into the chain of OrgHeading objects and find the newNode that corresponds to the current OrgHeadingItem."
	| correctHeadingItemNode |
	correctHeadingItemNode := newNode.
	self level timesRepeat: [ 
		correctHeadingItemNode := correctHeadingItemNode items first ].
	^ super passInformationTo: correctHeadingItemNode