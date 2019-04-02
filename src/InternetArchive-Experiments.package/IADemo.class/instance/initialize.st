as yet unclassified
initialize
	| dubbler | 
	super initialize.
	IAExampleItemLists filmItems viewItemTiles.
	dubbler := 	(Smalltalk at: #CrubDubbler) sample.
	dubbler similarPhrases inspect.
	(dubbler sentencesContainingPhrase: (NativePhrase fromString: 'Lexington')) inspect.