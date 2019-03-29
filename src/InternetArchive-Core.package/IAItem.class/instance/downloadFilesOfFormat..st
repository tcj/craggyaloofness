files
downloadFilesOfFormat: aFileFormat
	^ (self filesOfFormat: aFileFormat) collect: [:itemFile | IADownload forFile: itemFile inItem: self ]