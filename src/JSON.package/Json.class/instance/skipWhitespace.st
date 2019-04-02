private
skipWhitespace
	|c|
	[
		c := stream peek.
		c ifNil: [JsonIncompleteError signal: 'Expected JSON input'].
		c isSeparator
	] whileTrue: [stream next].
	self skipComment.