private
readString
	| s c |
	s := WriteStream on: ''.
	[
		c := stream next.
		c ifNil: [JsonIncompleteError signal: 'Incomplete read of JSON string'].
		c == $\
			ifTrue: [s nextPut: self interpretStringEscape.]
			ifFalse: [c == $" ifTrue: [^ s contents.].
					s nextPut: c]
	] repeat.