adding items
addItem: anIAItem
	"I'm sure it's bad style to do two things at once here...?  Rather than building the 
	file formats table every time it's accessed...?  Maybe...?"
	items add: anIAItem.
	anIAItem fileFormats do: [:format | 
		(byFormat at: format ifAbsentPut: Set new)
			add: anIAItem.
	]