testing
printOn: aStream
	super printOn: aStream.
	aStream 
		nextPutAll: ' (';
		nextPutAll: self formatString;
		nextPut: $).