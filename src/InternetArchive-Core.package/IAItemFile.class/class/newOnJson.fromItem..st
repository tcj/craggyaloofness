as yet unclassified
newOnJson: fileJson fromItem: anItem
	| instance keysNotUnderstood keys |
	instance := self new.
	instance item: anItem.
	keysNotUnderstood := Bag new.
	keys := fileJson keys asOrderedCollection.
	"separately handle json keys which are Smalltalk reserved words"
	reservedWordsMap associationsDo: [:assoc | 
		instance perform: (assoc value) with: (fileJson perform: assoc key).
		keys remove: (assoc key asString) ifAbsent: [ ] ].
	keys do: [:key | 
		[ instance perform: ( (key, $:) asSymbol ) with: (fileJson perform: key asSymbol) ]
			on: MessageNotUnderstood 
			do: [ instance jsonKeysNotUnderstood add: key ] ]. 
	^ instance