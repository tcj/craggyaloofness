printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' named '.
	aStream nextPut: $'.
	aStream nextPutAll: self identifier.
	aStream nextPut: $'.
	