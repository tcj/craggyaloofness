files
downloadFirstZip
	(self filesWithExtension: 'zip') 
		ifEmpty: [ ^ nil]
		ifNotEmpty: [:itemFiles | ^ IADownload forFile: (itemFiles first) inItem: self ]