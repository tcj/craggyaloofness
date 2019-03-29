downloading
contentStream
	"it may be the caller's responsibility to close the stream"
	self getResponse.
	[ ( response isSuccess )
		ifTrue: [ ^ response contentStream ] ]
	ensure: [response close ]