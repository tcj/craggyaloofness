testing-reports
reportDownloadResponseCodesForFormatNamed: formatString
	| itemsWithFormat report itemCount format |
	report := Dictionary new.
	format := IAFileFormat named: formatString.
	itemsWithFormat := self itemsWithFormat: format.
	itemCount := itemsWithFormat size.
	Utilities informUser: 'Checking return codes' during: [
		itemsWithFormat doWithIndex: [:item :idx |  | downloads responses |
			UIManager default informUser: ( 'item {1} of {2}' format: {idx asString. itemCount } )
			during: [ 
				downloads := item downloadFilesOfFormat: format.
				responses := downloads collect: [:ea | ea -> ea reportResponseCode ].
				report at: item put: responses ].
		].
	].
	^ report
	
"
self downloadResponseCodesForFormat: 'Web ARChive GZ'
"