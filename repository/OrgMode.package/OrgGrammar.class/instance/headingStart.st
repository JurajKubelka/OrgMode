grammar - heading
headingStart
	"Check if there is an extra bullet, if so, push, but do not consume!"
	^ (indentPrefix, headingBullet) and, headingPush