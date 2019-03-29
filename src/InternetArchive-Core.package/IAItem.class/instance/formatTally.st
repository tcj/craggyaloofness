files-formats
formatTally
	^ Bag newFrom: (self files collect: [:ea | ea format]).
	