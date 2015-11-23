-- SplashScreenScene
-- CandyQuations

-- Created by: Kyle Boulay
-- Created on: Nov 11(13) 2015
-- Created for: ICS2O
-- This is the first scene.

SplashScreenScene = class()

-- global to this file
local moveForwardButton

function SplashScreenScene:init()

    -- sprite("Dropbox:Star Black")
    moveForwardButton = Button("Dropbox:Green Settings Button", vec2(WIDTH/2, HEIGHT/2))
    
end

function SplashScreenScene:draw()
    -- Codea does not automatically call this method
    
    background(0, 0, 255, 255)
    moveForwardButton:draw()
end

function SplashScreenScene:touched(touch)
    -- Codea does not automatically call this method
    
    moveForwardButton:touched(touch)
    
    if(moveForwardButton.selected == true) then
        Scene.Change("play")
    end
end
