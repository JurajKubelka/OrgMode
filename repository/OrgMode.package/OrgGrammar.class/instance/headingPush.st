grammar - heading
headingPush
	^ [ :context | context indentStack push: headingBullet ] asParser