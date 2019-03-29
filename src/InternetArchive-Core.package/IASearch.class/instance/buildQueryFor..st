searching
buildQueryFor: anAssociation
	^ self initialQueryString format: { anAssociation key . anAssociation value . self limit . self currentPageNumber }.
