--[[

Assignment #5

Author: Andres Rodriguez
Version: 1.0

--]]

-- hides top status bar
display.setStatusBar( display.HiddenStatusBar )
bobSpawn = "./audio/mparty8_bob-omb.wav"
boom = "./audio/bye_bob-omb.wav"
local composer = require("composer")

-- start the game on the menu
composer.gotoScene( "menu", "fade", 400 )