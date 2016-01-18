-- MainMenu
-- FinalAppGroup1-2015

-- Created by: Alexandra Kuhn
-- Created on: Nov 23 2015
-- Created for: ICS2O
-- This is the 3rd scene.

MainMenu = class()

-- global to this file
local moveToMainGameButton
local moveToGameButton
local moveToPause
local moveToTutorialButton
local moveToStoreButton
local moveToSettingsButton
local moveToCreditsButton
local letterDropRobot
local letterDropRobotSelected = false
local letterDropRobotWait = false
local timeSinceRobotSelected

function MainMenu:init()
    moveToMainGameButton = Button("Dropbox:playButton", vec2(WIDTH/2, HEIGHT/2+110))
    moveToGameButton = Button("Dropbox:Green Forward Button", vec2(WIDTH/2, HEIGHT/2+200))
    moveToTutorialButton = Button("Dropbox:tutorialButton", vec2(WIDTH/2, HEIGHT/2-40))
    moveToStoreButton = Button("Dropbox:storeButton (1)", vec2(WIDTH/2, HEIGHT/2-190))
    moveToSettingsButton = Button("Dropbox:Teal Settings Button", vec2(WIDTH/2+300, HEIGHT/2+420))
    moveToCreditsButton = Button("Dropbox:creditsButton", vec2(WIDTH/2, HEIGHT/2-340))
    letterDropRobot = Button("Planet Cute:Character Princess Girl", vec2(WIDTH/2+235, HEIGHT/2-360))
end
sprite("Dropbox:tutorialButton")
function MainMenu:draw()
    -- Codea does not automatically call this method
    background(204, 43, 133, 255)
    fill(255, 255, 255, 255)
    font("Palatino-Bold")
   -- sprite("Dropbox:background", WIDTH/2, HEIGHT/2)
    moveToMainGameButton:draw()
    moveToGameButton:draw()
    moveToTutorialButton:draw()
    moveToStoreButton:draw()
    moveToSettingsButton:draw()
    moveToCreditsButton:draw()
    letterDropRobot:draw()
    fontSize(75)
    text("Letter Drop", WIDTH/2, HEIGHT/2+300)
    fontSize(25)
    if (letterDropRobotSelected == true) then
        text("Welcome to", WIDTH/2+240, HEIGHT/2-275)
        text("Letter Drop!", WIDTH/2+240, HEIGHT/2-300)
    end
    if (letterDropRobotWait == true) then
        background(0, 153, 255, 255)
    end
    if (letterDropRobotSelected == true) then
        if (timeSinceRobotSelected + 3 < ElapsedTime) then
            letterDropRobotSelected = false
        end
    end
end



function MainMenu:touched(touch)
    -- Codea does not automatically call this method
    moveToMainGameButton:touched(touch)
    moveToGameButton:touched(touch)
    moveToTutorialButton:touched(touch)
    moveToStoreButton:touched(touch)
    moveToSettingsButton:touched(touch)
    moveToCreditsButton:touched(touch)
    letterDropRobot:touched(touch)
    
    if(moveToMainGameButton.selected == true) then
        Scene.Change("maingame")
    end
    if(moveToGameButton.selected == true) then
        Scene.Change("prestart")
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
        timeSinceRobotSelected = ElapsedTime
    end
end