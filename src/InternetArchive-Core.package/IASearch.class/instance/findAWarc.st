utilities
findAWarc
	| format |
	format := IAFileFormat named: 'Web ARChive GZ'.
	^ items detect: [:ea | ea includesFileOfFormat: format ] ifNone: [self error: 'no WARCs found']