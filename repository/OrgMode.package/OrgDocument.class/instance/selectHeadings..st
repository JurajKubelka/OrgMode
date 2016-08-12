enumerating
selectHeadings: aBlock
	"Deeply enumerate headings and returns those that aBlock returns true."
	^ self heading selectHeadings: aBlock