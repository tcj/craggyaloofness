testing-reports
reportPublicFiles
	| report itemCount |
	report := Dictionary new.
	itemCount := self items size.
	Utilities informUser: 'Checking return codes' during: [
		self items doWithIndex: [:item :idx |  
			UIManager default 
				informUser: ( 'item {1} of {2}' format: {idx asString. itemCount } )
				during: [ item publicFiles ifNotEmpty: [:pf | report at: item put: pf ] 
			].
		].
	].
	^ report
	
"
self downloadResponseCodesForFormat: 'Web ARChive GZ'
"