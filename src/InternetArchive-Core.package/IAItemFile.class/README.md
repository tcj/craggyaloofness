Instance variables match json properties
	except json 'name' -> #fileName
	and		json 'size'	-> #bytes
				
TODO: 
	#format could be an IAItemFileFormat
	
watch out!  contains reference to item object which owns it