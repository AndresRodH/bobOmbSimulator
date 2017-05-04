--[[

Assignment #5

Author: Andres Rodriguez
Version: 1.0

--]]

-- hides top status bar
display.setStatusBar( display.HiddenStatusBar )

-- set defaults
myombSound = audio.loadSound("./audio/mparty8_bob-omb.wav")
byeBob = audio.loadSound("./audio/bye_bob-omb.wav")
activeSkin = "./img/bob_omb.png"

local composer = require("composer")

-- start the game on the menu
composer.gotoScene( "menu", "fade", 400 )