accessing
bytes
	^ bytes ifNil: [bytes := self getByteSize]