# craggyaloofness
Squeak Smalltalk interface to the Internet Archive API

Initially released at Camp Smalltalk 2019

## Example

To display the thumbnail for the 1981 Byte Magazine issue with the famous Smalltalk cover, do the following in a Workspace:

`(IAItem named: 'byte-magazine-1981-08' ) displayItemTileJpeg`

The "name" should be an Internet Archive item identifier, which is what comes after the `/details/` in an item URL, like the following:  `https://archive.org/details/byte-magazine-1981-08`

Collections are also supported:  `https://archive.org/details/byte-magazine`

## How to load into Squeak 5.2

Make sure you have Metacello using the first item in your Do menu.

Then clone this repo to your disk.

Then add the 'src' directory in this repo as a filetree:// repo in a Monticello browser.

More explicit instructions forthcoming.

## Caveats

* I don't recommend trying the IADemo class right now because it depends on an outside package.  
* This whole InternetArchive package might require JSON-tonyg.39.mcz from http://www.squeaksource.com/JSON/
** Edit: Actually, the JSON package just got added to my last commit somehow.  Hmm.
