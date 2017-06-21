# save.NO_FILE_VERSION

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [Number](https://docs.coronalabs.com/api/type/Number.html)
| __Library__          | [save.*](Readme.markdown)
| __Keywords__         | data, save
| __See also__         | [Sample code](sample.lua), [save.getVersion()](getVersion.markdown), [save.load()](load.markdown)


## Overview

This property is the return value for the [save.getVersion()](getVersion.markdown] function, when there is no save file.


## Example
 
``````lua
local save = require 'plugin.save'

save.init( "bad-filename.json", 1, {36, 45, 92, 36, 19, 28, 5}, "bveiubv984nw0" )

if (save.getVersion() == save.NO_FILE_VERSION) then
	print("No save file!")
else
	print("Save file version: " .. save.getVersion())
	save.load()
	print(save.data)
end
``````
