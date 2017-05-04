local composer = require( "composer" )
local scene = composer.newScene()



function scene:create( event )
	local sceneGroup = self.view
	--The primary object in the Composer library is the scene object. 
	--This is an event listener that responds to specific events, 
	--and it contains a unique self.view property which is a reference to the display group associated with the scene. 
	--This self.view is where you should insert visual elements pertaining to the scene.
	
    local text1 = display.newImageRect( "./img/made.png", 575, 640 )
    text1.x = display.contentCenterX
    text1.y = display.contentCenterY

    -- load sound
    local pipeSound = audio.loadSound("./audio/pipe.wav")

    -- set up menu button    
    local menu = display.newImageRect( "./img/back.png", 150, 50 )
    menu.x = display.contentWidth - 150
    menu.y = 50

    local function goMenu( event )
        print("Menu page")
        audio.play(pipeSound)
		composer.gotoScene( "menu", "slideRight", 400  )
		--return true -- prevents other objects from receiving the event, and basically means that it worked. 
    end

    menu:addEventListener("tap", goMenu)

    sceneGroup:insert( menu )
	sceneGroup:insert( text1 )
	
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