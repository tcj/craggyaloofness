displaying graphics
displayJpeg
	| form | 
	form := self downloadJpegIntoForm.
	Display restoreAfter: [ form displayOn: Display ].