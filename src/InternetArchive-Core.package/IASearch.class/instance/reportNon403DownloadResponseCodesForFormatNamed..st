testing-reports
reportNon403DownloadResponseCodesForFormatNamed: formatString
	| itemsWithFormat report itemCount format |
	format := IAFileFormat named: formatString.
	report := Dictionary new.
	itemsWithFormat := self itemsWithFormat: format.
	itemCount := itemsWithFormat size.
	Utilities informUser: 'Checking return codes' during: [
		itemsWithFormat doWithIndex: [:item :idx |  | downloads responses non403 |
			UIManager default informUser: ( 'item {1} of {2}' format: {idx asString. itemCount } )
			during: [ 
				downloads := item downloadFilesOfFormat: format.
				responses := downloads collect: [:ea | ea -> ea reportResponseCode ].
				non403 := responses select: [:ea | (ea value = 403) not ].
				non403 ifNotEmpty: [ report at: item put: non403 ]
			]
		].
	].
	^ report
	
"
self downloadResponseCodesForFormat: 'Web ARChive GZ'
"