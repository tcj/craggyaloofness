accessing
limit

	^ limit ifNil: [limit := self initialItemLimit]