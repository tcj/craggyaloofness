downloading
streamResponseOn: aStream
	self getResponse.
	[ ( response isSuccess )
		ifTrue: [ 
			Utilities informUser:  ('Downloading ', self fileName ) 
				during: [
					response streamTo: aStream size: response contentLength progress: nil.
					] ]. 
	] ensure: [
		response close.
	]