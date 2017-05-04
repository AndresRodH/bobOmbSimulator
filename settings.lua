local composer = require( "composer" )
local scene = composer.newScene()



function scene:create( event )
	local sceneGroup = self.view
	--The primary object in the Composer library is the scene object. 
	--This is an event listener that responds to specific events, 
	--and it contains a unique self.view property which is a reference to the display group associated with the scene. 
	--This self.view is where you should insert visual elements pertaining to the scene.
	
	-- load sound
    local pipeSound = audio.loadSound("./audio/pipe.wav")

	-- set title
    local text1 = display.newText( "Bomb Skins", display.contentCenterX, 150, "./fonts/Super-Mario-World.ttf", 70 )

	-- bombette
	local bombette = display.newImageRect("./img/bombette.png", 200, 200)
	bombette.x = display.contentCenterX - display.contentWidth/4
	bombette.y = display.contentCenterY

	local function setBombette ()
		print( "SKIN SELECTED: Bombette")
		activeSkin = "./img/bombette.png"
		myombSound = audio.loadSound("./audio/mparty8_bob-omb.wav")
    	byeBob = audio.loadSound("./audio/bye_bob-omb.wav")
		audio.play( pipeSound )
		composer.gotoScene( "game", "zoomInOutFade"  )
	end

	bombette:addEventListener("tap", setBombette)

	-- bob_omb
	local bob_omb = display.newImageRect("./img/bob_omb.png", 200, 200)
	bob_omb.x = display.contentCenterX
	bob_omb.y = display.contentCenterY

	local function setBobOmb ()
		print( "SKIN SELECTED: bob_omb")
		activeSkin = "./img/bob_omb.png"
		myombSound = audio.loadSound("./audio/mparty8_bob-omb.wav")
    	byeBob = audio.loadSound("./audio/bye_bob-omb.wav")
		audio.play( pipeSound )
		composer.gotoScene( "game", "zoomInOutFade"  )
	end

	bob_omb:addEventListener("tap", setBobOmb)

	-- trump
	local trump = display.newImageRect("./img/trump.png", 200, 200)
	trump.x = display.contentCenterX + display.contentWidth/4
	trump.y = display.contentCenterY

	local function setTrump ()
		print( "SKIN SELECTED: Trump")
		activeSkin = "./img/trump.png"
		myombSound = audio.loadSound("./audio/I'm_really_rich.wav")
    	byeBob = audio.loadSound("./audio/get_out_of_here.wav")
		audio.play( pipeSound )
		composer.gotoScene( "game", "zoomInOutFade"  )
	end

	trump:addEventListener("tap", setTrump)

    -- load sound
    local pipeSound = audio.loadSound("./audio/pipe.wav")

	sceneGroup:insert( text1 )
	sceneGroup:insert( bombette )
	sceneGroup:insert( bob_omb )
	sceneGroup:insert( trump )
	
end

function scene:show( event )
	
	local phase = event.phase
	
	if "did" == phase then
			
	

	
	end
	
end

function scene:hide( event )
	
	local phase = event.phase
	if "will" == phase then

		-- remove touch listener for image
		
		-- image:removeEventListener( "touch", image )


	end
end

function scene:destroy( event )
	
	print( "((destroying scene 2's view))" )
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

---------------------------------------------------------------------------------

return scene