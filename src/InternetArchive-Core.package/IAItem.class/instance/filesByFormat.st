files-formats
filesByFormat
	"return a dictionary, keyed by FileFormats and valued by a collection of files of that format"
	| d | 
	d := Dictionary new.
	self files do: [:file | (d at: (file format) ifAbsentPut: [OrderedCollection new]) add: file].
	^ d