reports
itemsWithFormat: aFileFormat
	^ items select: [:ea | ea includesFileOfFormat: aFileFormat]