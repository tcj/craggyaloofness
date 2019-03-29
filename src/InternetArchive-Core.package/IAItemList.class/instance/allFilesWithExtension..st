reports
allFilesWithExtension: aString
	| files | 
	files := OrderedCollection new.
	items do: [:item | files addAll: (item files select: [:file | file fileName endsWith: aString ]) ].
	^ files