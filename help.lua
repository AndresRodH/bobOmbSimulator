local composer = require( "composer" )
local scene = composer.newScene()



function scene:create( event )
	local sceneGroup = self.view
	--The primary object in the Composer library is the scene object. 
	--This is an event listener that responds to specific events, 
	--and it contains a unique self.view property which is a reference to the display group associated with the scene. 
	--This self.view is where you should insert visual elements pertaining to the scene.
	
	-- Standard text object
	local text1 = display.newText( "TAP ANYWHERE TO DROP BOMBS!", display.contentCenterX, display.contentCenterY-100, "./fonts/Super-Mario-World.ttf", 70 )
	local text2 = display.newText( "TAP THE [!] BOX WHILE PLAYING FOR BOMB SKINS", display.contentCenterX, display.contentCenterY+100, "./fonts/Super-Mario-World.ttf", 50)
	
    -- load sound
    local upSound = audio.loadSound("./audio/1-up.wav")

    -- set up menu button    
    local menu = display.newImageRect( "./img/back.png", 150, 50 )
    menu.x = display.contentWidth - 150
    menu.y = 50

    local function goMenu( event )
        print("Menu page")
        audio.play(upSound)
		composer.gotoScene( "menu", "slideLeft", 400  )
		--return true -- prevents other objects from receiving the event, and basically means that it worked. 
    end

    menu:addEventListener("tap", goMenu)

    sceneGroup:insert( menu )
	sceneGroup:insert( text1 )
	sceneGroup:insert( text2 )
	
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