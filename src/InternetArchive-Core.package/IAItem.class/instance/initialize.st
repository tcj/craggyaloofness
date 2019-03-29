initialize-release
initialize
	super initialize.
	self fetchMetadata.
	(self json size = 0)
		ifTrue: [self error: 'json incomplete'].
	self interpretMetadata.