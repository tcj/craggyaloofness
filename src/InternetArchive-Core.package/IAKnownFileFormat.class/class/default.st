accessing
default
	^ DefaultInstance ifNil: [DefaultInstance := self basicNew initialize]