as yet unclassified
new 
	"There is only one of these, so don't let the user make a new one!!" 
	^self error: 'Class ', self name, ' cannot create new instances. Try ', self name, ' current'
	