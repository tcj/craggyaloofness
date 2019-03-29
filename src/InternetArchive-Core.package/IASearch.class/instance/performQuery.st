searching
performQuery
	"I will reach out to the web server and pull down json into my instance variable."
	| webResponse |
	fullUrl := self buildQueryFor: self queryAssociation.
	[ webResponse := WebClient httpGet: fullUrl ]
		on: SqueakSSLCertificateError
		do: [:ex | ex resume ]. "ignore all cert issues "	
	
	[ ( webResponse code = 200 )
		ifTrue: [	json := Json readFrom: webResponse content readStream. ]
		ifFalse: [ self error: 'non-200 response from search query' ] ] ensure: [webResponse close].
