displaying graphics
displayJpegInMorph
	| form morph | 
	form := self downloadJpegIntoForm.
	morph := BorderedMorph newBounds: (form bounds). 
	Display restoreAfter: [ form displayOn: Display ].