private
unescapeUnicode
	|string a b c d|
	a := self nextHexDigit.
	b := self nextHexDigit.
	c := self nextHexDigit.
	d := self nextHexDigit.
	string := String with: a with: b with: c with: d.
	^ Unicode value: (Integer readFrom: string readStream base: 16)