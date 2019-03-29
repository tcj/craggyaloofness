metadata
containingCollections
	"be careful!  this will download all metadata of all items in every collection!"
	"return a string representing the identifier of the collection which contains me"
	(self confirm: 'OK to retrieve all metadata for all items in all collections?')
		ifTrue: [ ^ self containingCollectionIdentifiers collect: [:aString | IACollection newForIdentifier: aString] ]
		ifFalse: [ nil ]