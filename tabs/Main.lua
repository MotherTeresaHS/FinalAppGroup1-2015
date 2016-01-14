-- Main
-- FinalAppGroup1-2015

-- Created by: Alexandra Kuhn
-- Created on: Nov 23 2015
-- Created for: ICS2O
-- This is the main starting point.

-- Test commit by Mr.Coxall

-- global to this program
highScore = nil
currentMoney = nil

-- Use this function to perform your initial setup
function setup()
    supportedOrientations(PORTRAIT_ANY)
    displayMode(FULLSCREEN)
    fill(0, 0, 0, 255)
    smooth()
    stroke(0, 0, 0, 255)
    font("ArialRoundedMTBold")
    fontSize(20)
    pushStyle()
    highScore = readLocalData("highScore", 0)
    currentMoney = readLocalData("currentmoney", 0)
    -- create the scenes
    Scene("companylogo", CompanyLogo)
    Scene("gamelogo", GameLogo)
    Scene("mainmenu", MainMenu)
    Scene("maingame", MainGame)
    Scene("pause", PauseScreen)
    Scene("tutorial", Tutorial)
    Scene("tutorialstart", TutorialStart)
    Scene("credits", Credits)
    Scene("settings", Settings)
    Scene("store", Store)
    Scene("hats", StoreHats)
    Scene("shirts", StoreShirts)
    Scene("pants", StorePants)
    Scene("glasses", StoreGlasses)
    Scene.Change("companylogo")
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(40, 40, 50)
    Scene.Draw()
end

function touched (touch)
    Scene.Touched(touch)
end