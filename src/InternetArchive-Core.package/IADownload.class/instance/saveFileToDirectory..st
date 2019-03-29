downloading
saveFileToDirectory: aFileDirectory
	| fileToSave |
	"be careful:  this will pause to warn the user if the file already exists"
	self getResponse.
	response isSuccess ifFalse: [ ^ self error: response status ].

	fileToSave := aFileDirectory newFileNamed: self fileName.
	fileToSave binary.

	[ response streamTo: fileToSave size: response contentLength 
			progress: [:total :amount | HTTPProgress new 
					total: total; 
					amount: amount;
					signal: ('Downloading ', self fileName) ] 
	] ensure: [
		fileToSave close.
		response close.
	]