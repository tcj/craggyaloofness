as yet unclassified
testSingleton
	"test that we didn't receive the class instead of its default instance"
	self deny: (known1 isMemberOf: IAKnownFileFormat)