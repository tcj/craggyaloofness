as yet unclassified
fromString: aString
	| instance |
	"given a list of identifiers separated by newlines,
	return myself"
	instance := self new.
	aString lines do: [:identifier | identifier ifNotEmpty: [ instance addItem: (IAItem newForIdentifier: identifier)] ].
	^ instance