# save.load()

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [function](http://docs.coronalabs.com/api/type/Function.html)
| __Library__          | [save.*](Readme.markdown)
| __Return value__     | nil
| __Keywords__         | load, save
| __See also__         | [Sample code](sample.lua), [save.save()](save.markdown)


## Overview

This function is used to load data from the save file.  The data is then available in the [save.data](data.markdown) table.


## Syntax

	save.load()


## Examples

``````lua
local save = require 'plugin.save'

save.init( "example.json", 1, {36, 45, 92, 36, 19, 28, 5}, "bveiubv984nw0" )
save.load()

if (save.data["field"]) then
	print(save.data["field"])
end
``````
