as yet unclassified
assertIncompleteJson: aString
	self should: [self readFrom: aString] raise: JsonIncompleteError