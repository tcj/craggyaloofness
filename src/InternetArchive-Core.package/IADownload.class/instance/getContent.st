downloading
getContent
	self getResponse.
	[ ( response isSuccess )
		ifTrue: [ 
			Utilities informUser:  ('Downloading ', self fileName ) 
				during: [ content := response content ] ] ]
	ensure: [response close ].
	^ content