# save.load()

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [function](http://docs.coronalabs.com/api/type/Function.html)
| __Library__          | [save.*](Readme.markdown)
| __Return value__     | [Boolean](https://docs.coronalabs.com/api/type/Boolean.html).
| __Keywords__         | load, save
| __See also__         | [Sample code](sample.lua), [save.save()](save.markdown)


## Overview

This function is used to load data from the save file.  The data is then available in the [save.data](data.markdown) table.

Note that at load time, if the save file has been tampered with, an alert dialog will be shown and the save data will be deleted. This is to prevent cheaters/hackers from tampering with save data.


## Syntax

	save.load( disableDelete, disableAlert, alertTitle, alertMessage )

##### disableDelete <small>(optional)</small>
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ Whether to disable deletion of save files whose keys do not match the values passed to [save.init()](init.markdown). This is intended for debug purposes, and the save file will not be loaded if it has been tampered with.

##### disableAlert <small>(optional)</small>
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ Whether to disable the alert dialog generated when the keys do not match the values passed to [save.init()](init.markdown). Set this to true if you want to implement your own custom behaviour for handling save file tampering.  This temporarily overrides any value passed to [save.init()](init.markdown).

##### alertTitle <small>(optional)</small>
_[String](https://docs.coronalabs.com/api/type/String.html)._ The alert dialog title text displayed by [save.load()](load.markdown) when the keys do not match the values passed to [save.init()](init.markdown).  This temporarily overrides any value passed to [save.init()](init.markdown).

##### alertMessage <small>(optional)</small>
_[String](https://docs.coronalabs.com/api/type/String.html)._ The alert dialog message text displayed by [save.load()](load.markdown) when the keys do not match the values passed to [save.init()](init.markdown).  This temporarily overrides any value passed to [save.init()](init.markdown).


## Examples

``````lua
local save = require 'plugin.save'

save.init( "example.json", 1, {36, 45, 92, 36, 19, 28, 5}, "bveiubv984nw0" )

if (save.load()) then
	print("Save file loaded")

	if (save.data["field"]) then
		print(save.data["field"])
	end
else
	print("Failed to load save file")
end
``````
