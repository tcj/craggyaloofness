metadata
interpretMetadata
	| reservedWords keysNotUnderstood |
	(self json at: 'created') ifNotNil: [:unixTime | 
		created := DateAndTime fromUnixSeconds: unixTime ].
		
	keysNotUnderstood := Bag new.
	reservedWords := Dictionary with: (#name->#fileName:) with:  (#size -> #bytes: ).
	"handle 'files' metadata values"
	( ( json at: 'files_count' ) > 0 )
		ifTrue: [
			files := json files collect: [:jsonFile | IAItemFile newOnJson: jsonFile fromItem: self].
			"only do the following on a development machine"
			self showFileKeysNotUnderstood. 
	].
		
