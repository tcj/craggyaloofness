as yet unclassified
testInvalid
	self assertInvalidJson: 'x'.
	self assertInvalidJson: '  x'.
	self assertInvalidJson: '  trx'.
	self assertInvalidJson: 'trux'.
	self assertInvalidJson: '.'.
	self assertInvalidJson: ':'.
	self assertInvalidJson: ','.
	self assertInvalidJson: ']'.
	self assertInvalidJson: '}'.
	self assertInvalidJson: '[x'.
	self assertInvalidJson: '[true t'.
	self assertInvalidJson: '[true,]'.
	self assertInvalidJson: '{]'.
	self assertInvalidJson: '{,'.
	self assertInvalidJson: '{"hi",'.
	self assertInvalidJson: '{"hi":x'.
	self assertInvalidJson: '{"hi":,'.
	self assertInvalidJson: '{"hi":true "'.
	self assertInvalidJson: '{"hi":true,}'.
	self assertInvalidJson: '\u263A'.