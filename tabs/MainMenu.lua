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
local letterDropRobot
local letterDropRobotSelected = false

function MainMenu:init()
    moveToMainGameButton = Button("Dropbox:Green Forward Circle Button", vec2(WIDTH/2, HEIGHT/2+110))
    moveToTutorialButton = Button("Dropbox:Blue Forward Circle Button", vec2(WIDTH/2, HEIGHT/2-40))
    moveToStoreButton = Button("Dropbox:Purple Forward Circle Button", vec2(WIDTH/2, HEIGHT/2-190))
    moveToSettingsButton = Button("Dropbox:Teal Settings Button", vec2(WIDTH/2+300, HEIGHT/2+420))
    moveToCreditsButton = Button("Dropbox:Red Forward Circle Button", vec2(WIDTH/2, HEIGHT/2-340))
    letterDropRobot = Button("Planet Cute:Character Princess Girl", vec2(WIDTH/2+250, HEIGHT/2-350))
end

function MainMenu:draw()
    -- Codea does not automatically call this method
    background(0, 153, 255, 255)
    moveToMainGameButton:draw()
    moveToTutorialButton:draw()
    moveToStoreButton:draw()
    moveToSettingsButton:draw()
    moveToCreditsButton:draw()
    letterDropRobot:draw()
    if (letterDropRobotSelected == true) then
        text("Welcome to Letter Drop!", WIDTH/2+240, HEIGHT/2-275)
    end
end

function MainMenu:touched(touch)
    -- Codea does not automatically call this method
    moveToMainGameButton:touched(touch)
    moveToTutorialButton:touched(touch)
    moveToStoreButton:touched(touch)
    moveToSettingsButton:touched(touch)
    moveToCreditsButton:touched(touch)
    letterDropRobot:touched(touch)
    
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
    if(letterDropRobot.selected == true) then
        letterDropRobotSelected = true
    end
    
end