private
consume: aString returning: anObject
	|v|
	aString do: [:c |
		v := stream next.
		v ifNil: [JsonIncompleteError signal: 'Incomplete ''', aString, ''' seen'].
		v == c ifFalse: [JsonInvalidError signal: 'Expected ''', aString, ''''] ].
	^ anObject