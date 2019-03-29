searching
fetchNextResults
	self performQuery.
	self buildResultsFromQuery.
	self advancePage.