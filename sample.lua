-- 
-- Abstract: save Library Plugin Test Project
-- 
-- Sample code is MIT licensed, see http://www.coronalabs.com/links/code/license
-- Copyright (C) 2015 Corona Labs Inc. All Rights Reserved.
--
------------------------------------------------------------

-- Load plugin library
local save = require "plugin.save"

-------------------------------------------------------------------------------
-- BEGIN (Insert your sample test starting here)
-------------------------------------------------------------------------------

local screenW, screenH = display.contentWidth, display.contentHeight
local buttonWidth = 50

-- Create some buttons
local buttonRed = display.newRect(0.5 * screenW, 0.5 * (screenH - (2 * buttonWidth)), buttonWidth, buttonWidth)
buttonRed:setFillColor(1, 0, 0)
local buttonGreen = display.newRect(0.5 * screenW, 0.5 * screenH, buttonWidth, buttonWidth)
buttonGreen:setFillColor(0, 1, 0)
local buttonBlue = display.newRect(0.5 * screenW, 0.5 * (screenH + (2 * buttonWidth)), buttonWidth, buttonWidth)
buttonBlue:setFillColor(0, 0, 1)

-------------------------------------------------------------------------------
-- Start using the save library
-------------------------------------------------------------------------------

-- First initialize the save file
-- The parameters are: filename, save file version (this is for app-specific versioning), cryptographic key, hash_key
-- The cryptographic key is an array of up to seven integers (defaulting to 0 where not specified)
-- The hash key is any string
save.init("example.json", 1, {36, 45, 92, 36, 19, 28, 5}, "bveiubv984nw0")
print("Save file version: " .. save.getVersion())

-- Load the save file
-- If the save file has been tampered with it will be deleted
print("Save file loaded: ", save.load())

-- Create a utility function to set unspecified values
local function setSaveDefaults()
	if (not save.data["redCount"]) then
		save.data["redCount"] = 0
	end

	if (not save.data["greenCount"]) then
		save.data["greenCount"] = 0
	end

	if (not save.data["blueCount"]) then
		save.data["blueCount"] = 0
	end
end

-- Set the defaults
setSaveDefaults()

-------------------------------------------------------------------------------
-- We are now using the save library
-------------------------------------------------------------------------------

-- Add some labels to the buttons, using the saved data
-- These values will be retained over stop-start
-- In the simulator, this relies on using the same project sandbox
local labelRed = display.newText(save.data["redCount"], buttonRed.x + (0.1 * buttonWidth), buttonRed.y + (0.25 * buttonWidth), 50, 50, native.systemFontBold, 14)
local labelGreen = display.newText(save.data["greenCount"], buttonGreen.x + (0.1 * buttonWidth), buttonGreen.y + (0.25 * buttonWidth), 50, 50, native.systemFontBold, 14)
local labelBlue = display.newText(save.data["blueCount"], buttonBlue.x + (0.1 * buttonWidth), buttonBlue.y + (0.25 * buttonWidth), 50, 50, native.systemFontBold, 14)

-- Add touch listeners to count the number of touches
function buttonRed:touch(event)
	if (event.phase == "began") then
		-- Update the touch count
		save.data["redCount"] = save.data["redCount"] + 1
		labelRed.text = save.data["redCount"]

		-- Update the save file
		save.save()
		return true
	end
end

buttonRed:addEventListener("touch", buttonRed)

function buttonGreen:touch(event)
	if (event.phase == "began") then
		-- Update the touch count
		save.data["greenCount"] = save.data["greenCount"] + 1
		labelGreen.text = save.data["greenCount"]

		-- Update the save file
		save.save()
		return true
	end
end

buttonGreen:addEventListener("touch", buttonGreen)

function buttonBlue:touch(event)
	if (event.phase == "began") then
		-- Update the touch count
		save.data["blueCount"] = save.data["blueCount"] + 1
		labelBlue.text = save.data["blueCount"]

		-- Update the save file
		save.save()
		return true
	end
end

buttonBlue:addEventListener("touch", buttonBlue)

-------------------------------------------------------------------------------
-- END
-------------------------------------------------------------------------------