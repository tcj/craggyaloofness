private
readArray
	| a |
	self skipWhitespace.
	(stream peekFor: $]) ifTrue: [ ^ #() ].	
	a := OrderedCollection new.
	[
		a add: self readAny.
		self skipWhitespace.
		(stream peekFor: $]) ifTrue: [ ^ a asArray].
		(stream peekFor: $, ) ifFalse: [JsonInvalidError signal: 'Missing comma'].
	] repeat.
