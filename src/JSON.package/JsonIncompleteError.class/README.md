I signal that reading a JSON value failed because more input is required, but that the input seen so far was not incorrect. Compare to JsonInvalidError.

Be warned that reading numbers directly out of a stream can be ambiguous!

Consider reading from '1234'. Is the result intended to be 1234, or is there missing input, and the next character will be '5', making the result (possibly) 12345?