queries-moved
itemFileFormatTally
	^ (self items collect:  [:ea | ea fileFormats sorted]) asBag sortedCounts