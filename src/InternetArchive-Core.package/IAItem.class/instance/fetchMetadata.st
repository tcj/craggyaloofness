metadata
fetchMetadata
	| webResponse | 
	webResponse := WebClient new httpGet: self metadataUrl.
	( webResponse code = 200 )
		ifTrue: [
			json := Json readFrom: webResponse contentStream.
			webResponse close ]
		ifFalse: [ self error: 'could not read metadata' ].
