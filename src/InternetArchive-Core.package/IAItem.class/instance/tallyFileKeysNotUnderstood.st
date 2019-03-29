metadata
tallyFileKeysNotUnderstood
	"requires that file objects have already been populated"
	| keysNotUnderstood |
	keysNotUnderstood := Bag new. 
	self files do: [:file | keysNotUnderstood addAll: file jsonKeysNotUnderstood].
	^ keysNotUnderstood