queries-moved
allFilesWithExtension: aString
	| files | 
	files := OrderedCollection new.
	self items do: [:item | files addAll: (item files select: [:file | file fileName endsWith: aString ]) ].
	^ files