reports
itemsSortedByNewness
	^ items asSortedCollection sortBlock: [:a :b | a isNewerThan: b]
	
