reports
filesOfFormat: aFileFormat
	| files | 
	files := OrderedCollection new.
	(self itemsWithFormat: aFileFormat) do: [:item | files addAll: (item filesOfFormat: aFileFormat)].
	^ files 
