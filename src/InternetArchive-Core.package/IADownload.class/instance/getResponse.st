downloading
getResponse
	"returns a WebResponse object"
	^ response := WebClient httpGet: self url.
	