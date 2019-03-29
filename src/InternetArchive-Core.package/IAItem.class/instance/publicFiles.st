files
publicFiles
	^ self files select: [:file | file isPublic]