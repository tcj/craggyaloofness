searching
buildResultsFromQuery
	identifiers := OrderedCollection new.
	items := OrderedCollection new.
	( ( ( json response) at: 'numFound' ) > 0 )
		ifTrue: [ 
			Utilities informUser: 'downloading item metadata' during: [
				identifiers addAll: ( self docs collect: [:ea | ea identifier ] ).
				identifiers do: [:identifier |
					Utilities informUser: ('for identifier: ', identifier) during:
					[ items add: (IAItem newForIdentifier: identifier) ].
				]
			].			
		].
