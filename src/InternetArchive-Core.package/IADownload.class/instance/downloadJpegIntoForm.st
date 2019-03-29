displaying graphics
downloadJpegIntoForm
	| s contents jww imageExtent form | 
	s := ByteArray new writeStream.
	s binary.
	self getResponse.
	response streamTo: s size: response contentLength progress: nil.
	response close.
	contents := s contents.
	(JPEGReadWriter2 understandsImageFormat: (contents readStream))
		ifFalse: [^ self error: 'cannot read jpeg'].
	jww := JPEGReadWriter2 new.
	imageExtent := jww imageExtent: contents.
	form := Form extent: imageExtent depth: 32.
	jww uncompress: contents into: form doDithering: false.
	^ form