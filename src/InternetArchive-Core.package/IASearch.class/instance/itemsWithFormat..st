queries-moved
itemsWithFormat: formatString
	^ self items select: [:ea | ea fileFormats includes: formatString]