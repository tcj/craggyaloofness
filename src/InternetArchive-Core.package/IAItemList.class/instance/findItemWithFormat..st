reports
findItemWithFormat: formatString
	^ items detect: [:ea | ea fileFormats includes: formatString].