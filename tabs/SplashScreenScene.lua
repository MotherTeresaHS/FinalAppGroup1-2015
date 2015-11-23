-- SplashScreenScene
-- FinalAppGroup1-2015

-- Created by: Alexandra Kuhn
-- Created on: Nov 23 2015
-- Created for: ICS2O
-- This is the first scene.

SplashScreenScene = class()

-- global to this file
local moveForwardButton

function SplashScreenScene:init()
    
    moveForwardButton = Button("Dropbox:Purple Forward Button", vec2(WIDTH/2, HEIGHT/2))
end

function SplashScreenScene:draw()
    -- Codea does not automatically call this method
    background(22, 247, 223, 255)
    moveForwardButton:draw()
    
end

function SplashScreenScene:touched(touch)
    -- Codea does not automatically call this method
    
    moveForwardButton:touched(touch)
    
    if(moveForwardButton.selected == true) then
        Scene.Change("play")
    end
end
