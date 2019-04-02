private
nextHexDigit
	| c |
	c := stream next.
	c ifNil: [JsonIncompleteError signal: 'Expecting hex digit'].
	c := c asUppercase.
	(c isDigit or: [c >= $A and: [c <= $F]]) ifTrue: [^ c].
	JsonInvalidError signal: 'Expected hex digit'.