displaying graphics
displayJpegInWindow
	| form formMorph window | 
	self flag: #seeFormClassSideForUtilityMethod.
	form := self downloadJpegIntoForm.
	formMorph := form asMorph.

	window := SystemWindow labelled: 'image'.
	window 
"		addMorphCentered: (form asMorph);"
		addMorph: formMorph frame: (0.0@0.0 corner: 1.0@1.0) .
"		addMorph: (form asMorph) fullFrame: (SystemWindow menuBoxFrame) ."
	window 
		openInWorldExtent: (form extent scaleBy: 1.2 @ 1.2).