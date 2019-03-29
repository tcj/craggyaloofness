as yet unclassified
initialize
	| dubbler | 
	super initialize.
	IAExampleItemLists filmItems viewItemTiles.
	dubbler := 	CrubDubbler sample.
	dubbler similarPhrases inspect.
	(dubbler sentencesContainingPhrase: (NativePhrase fromString: 'Lexington')) inspect.