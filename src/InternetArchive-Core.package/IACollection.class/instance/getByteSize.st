accessing
getByteSize
	^ self items inject: 0 into: [:totalBytes :item | totalBytes := totalBytes + item bytes.  totalBytes]