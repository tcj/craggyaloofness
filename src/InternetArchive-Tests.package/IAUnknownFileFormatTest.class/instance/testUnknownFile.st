as yet unclassified
testUnknownFile
	self assert: unk1 isUnknownFileFormat.
	self deny: unk1 isKnownFileFormat.