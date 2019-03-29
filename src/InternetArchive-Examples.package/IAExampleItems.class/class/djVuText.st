example items
djVuText
	"this item has some DjVu text and is a member of multiple collections"
	^  IAItem newForIdentifier: 'ERIC_ED363909'
	
"
| item files  | 
item := IAItem newForIdentifier: 'ERIC_ED363909'.
files := item downloadFilesOfFormat: 'DjVuTXT'.
files any content
"