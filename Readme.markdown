# save: Plugin API Docs

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [Library](http://docs.coronalabs.com/api/type/Library.html)
| __Corona Store__     | [save](http://store.coronalabs.com/plugin/save)
| __Keywords__         | save, secure, crypto, hash, JSON
| __See also__         | [Sample code](sample.lua)

## Overview

The save plugin can be used in your [Corona](https://coronalabs.com/products/corona-sdk/) project. It enables you to securely save application data, such as game high scores and achievements progress, and persistent settings/configuration. The secure aspect is useful for preventing users from modifying save data in an attempt to cheat leaderboards/achievements, or unlock IAP for free.


## Syntax

	local save = require "plugin.save"

### Functions

##### [save.init()](init.markdown)

##### [save.load()](load.markdown)

##### [save.save()](save.markdown)


### Properties

##### [save.data](data.markdown)


## Project Configuration

### Corona Store Activation

In order to use this plugin, you must activate the plugin at the [Corona Store](http://store.coronalabs.com/plugin/save).


### SDK

When you build using the Corona Simulator, the server automatically takes care of integrating the plugin into your project. 

All you need to do is add an entry into a `plugins` table of your `build.settings`. The following is an example of a minimal `build.settings` file:

``````
settings =
{
	plugins =
	{
		-- key is the name passed to Lua's 'require()'
		["plugin.save"] =
		{
			-- required
			publisherId = "com.pelagic-games",
		},
	},		
}
``````

### Enterprise

If you have activated this plugin, you can download this plugin from the corresponding plugin page in the [Corona Store](http://store.coronalabs.com/plugin/save).


## Resources

### Sample Code

You can access sample code [here](sample.lua).

### Support

More support is available from the Pelagic Games team:

* [E-mail](mailto://support@pelagic-games.com)
* [Plugin Publisher](http://www.pelagic-games.com)


## Compatibility

| Platform                     | Supported
| ---------------------------- | ---------------------------- 
| iOS                          | Yes
| Android                      | Yes
| Android (GameStick)          | Yes
| Android (Kindle)             | Yes
| Android (NOOK)               | Yes
| Android (Ouya)               | Yes
| Mac App                      | Yes
| Win32 App                    | Yes
| Windows Phone 8              | Yes
| Corona Simulator (Mac)       | Yes
| Corona Simulator (Win)       | Yes

