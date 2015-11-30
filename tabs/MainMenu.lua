-- MainMenu
-- FinalAppGroup1-2015

-- Created by: Alexandra Kuhn
-- Created on: Nov 23 2015
-- Created for: ICS2O
-- This is the second scene.

MainMenu = class()

-- global to this file
local moveToMainGameButton
local moveToTutorialButton
local moveToStoreButton
local moveToSettings
local moveToCredits


function MainMenu:init()
    
    moveToMainGameButton = Button("Dropbox:Green Forward Circle Button", vec2(WIDTH/2+100, HEIGHT/2))
    moveToArtworkButton = Button("Dropbox:Blue Forward Circle Button", vec2(WIDTH/2+300, HEIGHT/2))
    moveToStoreButton = Button("Dropbox:Red Forward Circle Button", vec2(WIDTH/2, HEIGHT/2+200))
end

function MainMenu:draw()
    -- Codea does not automatically call this method
    
    background(67, 70, 72, 255)
    moveToMainGameButton:draw()
    moveToArtworkButton:draw()
    moveToStoreButton:draw()
end

function MainMenu:touched(touch)
    -- Codea does not automatically call this method
    
    moveToMainGameButton:touched(touch)
    moveToArtworkButton:touched(touch)
    moveToStoreButton:touched(touch)
    
    if(moveToMainGameButton.selected == true) then
        Scene.Change("mainGame")
    end
    if(moveToArtworkButton.selected == true) then
        Scene.Change("artwork")
    end
    if(moveToStoreButton.selected == true) then
        Scene.Change("store")
    end
end