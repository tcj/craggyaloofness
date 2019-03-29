as yet unclassified
initialize
	"keep a table of all default instances of known file formats"
	KnownFileFormats := Dictionary new. 
	IAKnownFileFormat allSubclasses do: [:ea | KnownFileFormats at: ( ea formatString ) put: ( ea default ) ].
	"unknown file formats will be handled within IAUnknownFileFormat"
	

"
self initialize
"