-- MainScene
-- CandyQuations

-- Created by: Kyle Boulay
-- Created on: Nov 11(13) 2015
-- Created for: ICS2O
-- This is the second scene.

MainScene = class()

-- global to this file
local moveBackButton

function MainScene:init()
    
    -- sprite("Dropbox:Yellow Question Button")
   
    moveBackButton = Button("Dropbox:Blue Settings Button", vec2(WIDTH/2, HEIGHT/2))
    
end

function MainScene:draw()
    -- Codea does not automatically call this method
    
    background(255, 0, 0, 255)
    moveBackButton:draw()
end

function MainScene:touched(touch)
    -- Codea does not automatically call this method
    
    moveBackButton:touched(touch)
    
    if(moveBackButton.selected == true) then
        Scene.Change("splash")
    end
    
end