# craggyaloofness
Squeak Smalltalk interface to the Internet Archive API

Initially released at Camp Smalltalk 2019

## Example

To display the thumbnail for the 1981 Byte Magazine issue with the famous Smalltalk cover, do the following in a Workspace:

`(IAItem named: 'byte-magazine-1981-08' ) displayItemTileJpeg`

## How to load into Squeak 5.2

Make sure you have Metacello using the first item in your Do menu.

Then clone this repo to your disk.

Then add the 'src' directory in this repo as a filetree:// repo in a Monticello browser.

More explicit instructions forthcoming.
