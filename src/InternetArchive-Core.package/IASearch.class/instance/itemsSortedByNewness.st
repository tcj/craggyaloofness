queries-moved
itemsSortedByNewness
	^ self items asSortedCollection sortBlock: [:a :b | a isNewerThan: b]
	
