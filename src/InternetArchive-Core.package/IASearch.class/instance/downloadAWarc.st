utilities
downloadAWarc
	| item format |
	format := IAFileFormat named: 'Web ARChive GZ'.
	item := items detect: [:ea | ea includesFileOfFormat: format].
	^ item downloadFilesOfFormat: format