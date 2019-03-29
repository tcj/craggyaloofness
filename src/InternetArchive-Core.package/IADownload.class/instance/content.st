downloading
content
	"it may be the caller's responsibility to close the stream"
	self getResponse.
	[ ( response isSuccess )  
		ifTrue: [ ^ response content ] ]
	ensure: [response close ]