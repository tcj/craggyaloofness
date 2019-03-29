files-graphics
itemTileJpegs
	| downloads | 
	downloads := self downloadFilesOfFormat: (IAItemTileFormat default).
	^ downloads