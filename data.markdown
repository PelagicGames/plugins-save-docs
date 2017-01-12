# save.data

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [Table](https://docs.coronalabs.com/api/type/Table.html)
| __Library__          | [save.*](Readme.markdown)
| __Keywords__         | data, save
| __See also__         | [Sample code](sample.lua), [save.save()](save.markdown), [save.load()](load.markdown)


## Overview

This property is a table of the current save data for the application.  The data is loaded from the save file by calling [save.load()](load.markdown), and saved by calling [save.save()](save.markdown).


## Example
 
``````lua
local save = require 'plugin.save'

save.init( "example.json", 1, {36, 45, 92, 36, 19, 28, 5}, "bveiubv984nw0" )
save.load()
print(save.data)

if (save.data["field"]) then
	print(save.data["field"])
else
	save.data["field"] = "value"
end

save.save()
``````
