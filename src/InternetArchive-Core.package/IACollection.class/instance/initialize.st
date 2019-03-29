initialize-release
initialize

	super initialize.
	search := IASearch resultsForCollection: self.
	items := self fetchItemList.
