as yet unclassified
knownFileFormatNamed: aString ifNone: aBlock 
	"returns nil if none found"
	^ (IAKnownFileFormat forFormatNamed: aString)
		ifNil: [aBlock value]