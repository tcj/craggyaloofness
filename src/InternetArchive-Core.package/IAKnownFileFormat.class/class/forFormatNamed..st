as yet unclassified
forFormatNamed: aString
	| found | 
	"return the instance rather than the class"
	found := self subclasses detect: [:f | f formatString = aString] ifNone: [ nil ].
	^ found
		ifNotNil: [ found default ]