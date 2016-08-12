grammar - basic
bodyOneLine
	^ (startOfLine, headingBullet not, lineEnd negate star flatten, lineEnd) nonEmpty