files-formats
fileFormats
	| formats | 
	formats := Set new.
	self files do: [:ea | formats add: ea format].
	^ formats