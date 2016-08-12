grammar - lists
list
	^ #setIl asParser, listItem, listItem trimAlign star, #restoreIl asParser
		map: [ :anIndent :anItem :anItems :aDedent |
					Array with: anItem withAll: anItems ]