as yet unclassified
named: aString
	"Lookup and return existing KnownFileFormat.  If none, lookup and/or create an UnknownFileFormat, and return it."
	self flag: #uhoh.
	"bypassing the lookup table now as we are in rapid development and I don't want to have to reinitialize
	the superclass every time I create a new subclass"
	^ self knownFileFormatNamed: aString 
		ifNone: [self unknownFileFormatNamed: aString]
