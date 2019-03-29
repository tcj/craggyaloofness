utilities
downloadResponseCodesForFormatNamed: formatString
	| itemsWithFormat codes itemCount format |
	codes := OrderedCollection new.
	format := IAFileFormat named: formatString.
	itemsWithFormat := self items select: [:ea | ea fileFormats includes: format]; yourself.
	itemCount := itemsWithFormat size.
	Utilities informUser: 'Checking return codes' during: [
		itemsWithFormat doWithIndex: [:item :idx |  | downloads responses |
			UIManager default informUser: ( 'item {1} of {2}' format: {idx asString. itemCount } )
			during: [
				downloads := item downloadFilesOfFormat: format.
				responses := downloads collect: [:ea | ea reportResponseCode ].
				codes addAll: responses ].
		].
	].
	^ codes
	
"
self downloadResponseCodesForFormat: 'Web ARChive GZ'
"