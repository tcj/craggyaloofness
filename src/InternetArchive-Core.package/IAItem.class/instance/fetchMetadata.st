metadata
fetchMetadata
	| result | 
	result := WebClient httpRequest: #GET 
		url: self metadataUrl headers: #() content: nil response: nil.
	^ (result respondsTo: #contentType)
		ifTrue: [ " is MIMEDocument so request was successful"
				json := Json readFrom: result contentStream]
		ifFalse: [ "is String with contents so request was unsuccessful"
				self error: 'could not read metadata' ]
