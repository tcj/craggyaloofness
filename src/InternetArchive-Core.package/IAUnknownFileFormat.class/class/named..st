as yet unclassified
named: aString
	^ self allInstances
		detect: [:ea | ea formatString = aString ]
		ifNone: [self newWithFormatString: aString]