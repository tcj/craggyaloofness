metadata
containingCollectionIdentifiers
	"return an array of string(s) representing the identifier(s) of the collection(s) which contain(s) me"
	| metadataResponse |
	metadataResponse := self metadata at: 'collection'.
	^ metadataResponse	isString 
		ifTrue: [ { metadataResponse } ]
		ifFalse: [ 
			"let's assume this is an array"
			metadataResponse isCollection
				ifTrue: [ metadataResponse ] 
				ifFalse: [ self error: 'collection is neither string nor array of strings' ] ]