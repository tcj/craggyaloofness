graphics
viewItemTiles
	"Build a form dictionary and display.  Key is item name and value is form."
	| formd noThumbForm |
	formd := Dictionary new.
	noThumbForm := self initThumbForm.
	self items do: [:item |  | thumbForm |
		thumbForm := item includesItemTile
			ifTrue: [ item thumbnailDownload downloadJpegIntoForm ]
			ifFalse: [ noThumbForm ].
		formd at: item identifier put: thumbForm.
	].
	^ GraphicalDictionaryMenu openOn: formd withLabel: 'search results'
	