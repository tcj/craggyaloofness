as yet unclassified
assertInvalidJson: aString
	self should: [self readFrom: aString] raise: JsonInvalidError