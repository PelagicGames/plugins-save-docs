# save.rename()

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [function](http://docs.coronalabs.com/api/type/Function.html)
| __Library__          | [save.*](Readme.markdown)
| __Return value__     | [Boolean](https://docs.coronalabs.com/api/type/Boolean.html)
| __Keywords__         | save, rename
| __See also__         | [Sample code](sample.lua), [save.load()](save.markdown)


## Overview

This function is used to rename the current save file.


## Syntax

	save.rename()


## Examples

``````lua
local save = require 'plugin.save'

save.init( "example.json", 1, {36, 45, 92, 36, 19, 28, 5}, "bveiubv984nw0" )

if (save.rename("example-renamed.json")) then
	print("Save file renamed!")
end
``````
