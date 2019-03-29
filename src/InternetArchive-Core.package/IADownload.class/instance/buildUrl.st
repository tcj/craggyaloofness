initialize-release
buildUrl
	^ 'http://archive.org/download/{1}/{2}' format: { self item identifier . self fileName }