files-formats
filesOfFormat: aFileFormat

	^ self files select: [:file | file format = aFileFormat]