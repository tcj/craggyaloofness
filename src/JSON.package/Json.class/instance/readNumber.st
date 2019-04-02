private
readNumber
	| acc c |
	acc := WriteStream on: ''.
	[
		c := stream peek.
		(c isNil not and: [Json numbersMayContain: c]) ifFalse: [
			[^ acc contents asNumber] on: Error do: [JsonInvalidError signal: 'Invalid number']].
		acc nextPut: c.
		stream next.
	] repeat.