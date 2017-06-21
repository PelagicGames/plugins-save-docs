# save.getVersion()

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [function](http://docs.coronalabs.com/api/type/Function.html)
| __Library__          | [save.*](Readme.markdown)
| __Return value__     | [Number](https://docs.coronalabs.com/api/type/Number.html)
| __Keywords__         | load, save, version
| __See also__         | [Sample code](sample.lua), [save.load()](load.markdown), [save.save()](save.markdown), [save.NO_FILE_VERSION](NO_FILE_VERSION.markdown)


## Overview

This function is used to get the version of the current save file.  This can be called safely to check whether an older version is being used before [save.load()](load.markdown) is called, allowing different versions to use different keys. If you ever need to add or change keys for save files, you should change the version value passed to [save.init()](init.markdown) in your application, and call this function before loading the save file to determine which key to use (see example below).

If this function is called and no save file exists, then [save.NO_FILE_VERSION](NO_FILE_VERSION.markdown) will be returned.


## Syntax

	save.getVersion()


## Examples

``````lua
local save = require 'plugin.save'

save.init( "example.json", 2, {63, 54, 29, 63, 91, 82, 5}, "vbeiubv984nw0" )

-- Handle old versions
if (save.getVersion() == 1) then
	-- Use old key
	save.init( "example.json", 2, {36, 45, 92, 36, 19, 28, 5}, "bveiubv984nw0" )
	save.load()

	-- Start using new key
	save.init( "example.json", 2, {63, 54, 29, 63, 91, 82, 5}, "vbeiubv984nw0" )
	save.save()
end
``````
