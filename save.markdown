# save.save()

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [function](http://docs.coronalabs.com/api/type/Function.html)
| __Library__          | [save.*](Readme.markdown)
| __Return value__     | nil
| __Keywords__         | save, JSON
| __See also__         | [Sample code](sample.lua), [save.load()](load.markdown)


## Overview

This function is used to save the current data (in the [save.data](data.markdown) table) to the save file.


## Syntax

	save.save()


## Examples

``````lua
local save = require 'plugin.save'

save.init( "example.json", 1, {36, 45, 92, 36, 19, 28, 5}, "bveiubv984nw0" )
save.data["new_field"] = 100
save.save()
``````
