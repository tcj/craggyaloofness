files
filesWithExtension: aString
	"Return all files with the given file extension"
	^ self files select: [:ea | ea fileName endsWith: aString]