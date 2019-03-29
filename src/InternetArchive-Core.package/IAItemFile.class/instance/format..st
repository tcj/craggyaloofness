accessing
format: anObject

	format := anObject isString 
		ifTrue: [IAFileFormat named: anObject] 
		ifFalse: [IAFileFormat isFileFormat
			ifTrue: [ anObject ]
			ifFalse: [ self error: 'setting format to neither a string nor a file format' ] ]