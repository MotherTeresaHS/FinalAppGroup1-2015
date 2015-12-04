-- MainMenu
-- FinalAppGroup1-2015

-- Created by: Alexandra Kuhn
-- Created on: Nov 23 2015
-- Created for: ICS2O
-- This is the 3rd scene.

MainMenu = class()

-- global to this file
local moveToMainGameButton
local moveToPause
local moveToTutorialButton
local moveToStoreButton
local moveToSettingsButton
local moveToCreditsButton

function MainMenu:init()
    moveToMainGameButton = Button("Dropbox:Green Forward Circle Button", vec2(WIDTH/2+100, HEIGHT/2))
    moveToTutorialButton = Button("Dropbox:Blue Forward Circle Button", vec2(WIDTH/2+300, HEIGHT/2))
    moveToStoreButton = Button("Dropbox:Purple Forward Circle Button", vec2(WIDTH/2, HEIGHT/2+20))
    moveToSettingsButton = Button("Dropbox:Teal Settings Button", vec2(WIDTH/2+300, HEIGHT/2+420))
    moveToCreditsButton = Button("Dropbox:Red Forward Circle Button", vec2(WIDTH/2, HEIGHT/2+200))
end

function MainMenu:draw()
    -- Codea does not automatically call this method
    background(0, 153, 255, 255)
    moveToMainGameButton:draw()
    moveToTutorialButton:draw()
    moveToStoreButton:draw()
    moveToSettingsButton:draw()
    moveToCreditsButton:draw()
end

function MainMenu:touched(touch)
    -- Codea does not automatically call this method
    moveToMainGameButton:touched(touch)
    moveToTutorialButton:touched(touch)
    moveToStoreButton:touched(touch)
    moveToSettingsButton:touched(touch)
    moveToCreditsButton:touched(touch)
    
    if(moveToMainGameButton.selected == true) then
        Scene.Change("mainGame")
    end
    if(moveToTutorialButton.selected == true) then
        Scene.Change("tutorial")
    end
    if(moveToStoreButton.selected == true) then
        Scene.Change("store")
    end
    if(moveToSettingsButton.selected == true) then
        Scene.Change("settings")
    end
    if(moveToCreditsButton.selected == true) then
        Scene.Change("credits")
    end
end