as yet unclassified
animatedGif
	| item array | 
	item := IAItem newForIdentifier: 'nightonbaldmountain'.
	array := item filesOfFormat: IAAnimatedGifFormat default.
	^ array first
		
"
IAExampleFileFormats animatedGif
"