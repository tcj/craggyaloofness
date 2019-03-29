initialize-release
clear
	self items ifNotNil: [:i | i removeAll].
	items := nil.
	