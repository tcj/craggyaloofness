printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' ('.
	self format printOn: aStream.
	aStream 
		nextPutAll: ') named ';
		nextPutAll: self fileName surroundedBySingleQuotes.
	