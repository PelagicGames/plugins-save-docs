# save.init()

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [function](http://docs.coronalabs.com/api/type/Function.html)
| __Library__          | [save.*](Readme.markdown)
| __Return value__     | nil
| __Keywords__         | save, init
| __See also__         | [Sample code](sample.lua)


## Overview

This function is used to initialize the save plugin.  The function can be called again to change the parameters, for example to load a different save file, or to use different keys and version numbers for new save file versions (see [save.getVersion()](getVersion.markdown) for instructions on versioning).


## Syntax

	save.init( filename, version, crypto_key, hash_key )

##### filename <small>(required)</small>
_[String](https://docs.coronalabs.com/api/type/String.html)._ The save file.  Files are save in JSON, so using a .json extension is recommended.

##### version <small>(required)</small>
_[Number](https://docs.coronalabs.com/api/type/Number.html)._ The save file version, which is specific to the application.  Increment this if the data contained in the save file is modified in a new application version and you need to add version-specific handling.  See [save.getVersion()](getVersion.markdown) for instructions on versioning.  See [save.getVersion()](getVersion.markdown) for instructions on versioning.

##### crypto_key <small>(required)</small>
_[Array](https://docs.coronalabs.com/api/type/Array.html)._ The cryptographic key used for making the data more secure.  This is an array of 7 integers (any unspecified integers are defaulted to 0).

##### hash_key <small>(required)</small>
_[String](https://docs.coronalabs.com/api/type/String.html)._ The hash key used to encrypt the data.  This can be any string, and may be the same for different applications, but it is recommended that it is unique to the application.  The data may be made more secure by concatenating an application-specific string with a unique device-specific ID.

##### disableAlert <small>(optional)</small>
_[Boolean](https://docs.coronalabs.com/api/type/Boolean.html)._ Whether to disable the alert dialog generated by [save.load()](load.markdown) when the keys do not match the save file. Set this to true if you want to implement your own custom behaviour for handling save file tampering.  This sets the default behaviour, which can be overridden by parameters passed to [save.load()](load.markdown).

##### alertTitle <small>(optional)</small>
_[String](https://docs.coronalabs.com/api/type/String.html)._ The alert dialog title text displayed by [save.load()](load.markdown) when the keys do not match the save file.  Defaults to "No cheating!".  This sets the default text, which can be overridden by parameters passed to [save.load()](load.markdown).

##### alertMessage <small>(optional)</small>
_[String](https://docs.coronalabs.com/api/type/String.html)._ The alert dialog message text displayed by [save.load()](load.markdown) when the keys do not match the save file.  Defaults to "Save file has been tampered with, so will be deleted!".  This sets the default text, which can be overridden by parameters passed to [save.load()](load.markdown).


## Examples

``````lua
local save = require 'plugin.save'

save.init( "example.json", 1, {36, 45, 92, 36, 19, 28, 5}, "bveiubv984nw0" )
``````
