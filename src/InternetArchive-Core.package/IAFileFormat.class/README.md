KnownFileFormats follow a singleton pattern
UnknownFileFormats 
	use the allInstances mechanism to look up the proper object
	but could be changed to be kept in a lookup table by their class

TODO: write tests for known items

NOTE: Be sure to run the class-side initialize every time ... no 
