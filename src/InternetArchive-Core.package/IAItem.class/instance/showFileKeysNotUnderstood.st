metadata
showFileKeysNotUnderstood
	| keysNotUnderstood |
	keysNotUnderstood := self tallyFileKeysNotUnderstood.
	keysNotUnderstood ifNotEmpty: [
		Transcript show: ( '{2} file keys not understood: {1}' format: { 
					keysNotUnderstood sortedCounts asString. self identifier } ); cr ]
	