downloading
reportResponseCode
	| code | 
	self getResponse.
	[ code := response code ] ensure: [	response close].
	^ code
