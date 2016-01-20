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
--local wordWallWordList = {}
wordWallWordList = {}
timeLeftOnClock = 60


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
    -- "A" Letter Words
    table.insert(wordWallWordList, "about")
    table.insert(wordWallWordList, "again")
    table.insert(wordWallWordList, "almost")
    table.insert(wordWallWordList, "also")
    table.insert(wordWallWordList, "always")
    table.insert(wordWallWordList, "another")
    table.insert(wordWallWordList, "anyone")
    table.insert(wordWallWordList, "are")
    -- "B" Letter Words
    table.insert(wordWallWordList, "beautiful")
    table.insert(wordWallWordList, "because")
    table.insert(wordWallWordList, "before")
    table.insert(wordWallWordList, "buy")
    table.insert(wordWallWordList, "by")
    -- "C" Letter Words
    table.insert(wordWallWordList, "can't")
    table.insert(wordWallWordList, "city")
    table.insert(wordWallWordList, "could")
    table.insert(wordWallWordList, "community")
    table.insert(wordWallWordList, "confusion")
    table.insert(wordWallWordList, "countries")
    -- "D" Letter Words
    table.insert(wordWallWordList, "didn't")
    table.insert(wordWallWordList, "discover")
    table.insert(wordWallWordList, "doesn't")
    table.insert(wordWallWordList, "don't")
    -- "E" Letter Words
    table.insert(wordWallWordList, "enough")
    table.insert(wordWallWordList, "especially")
    table.insert(wordWallWordList, "everybody")
    table.insert(wordWallWordList, "everything")
    table.insert(wordWallWordList, "except")
    table.insert(wordWallWordList, "exciting")
    -- "F" Letter Words
    table.insert(wordWallWordList, "favourite")
    table.insert(wordWallWordList, "first")
    table.insert(wordWallWordList, "friendly")
    -- "G" Letter Words
    table.insert(wordWallWordList, "general")
    table.insert(wordWallWordList, "getting")
    table.insert(wordWallWordList, "governor")
    -- "H" Letter Words
    table.insert(wordWallWordList, "have")
    table.insert(wordWallWordList, "hidden")
    table.insert(wordWallWordList, "hole")
    table.insert(wordWallWordList, "hopeless")
    -- "I" Letter Words
    table.insert(wordWallWordList, "I'm")
    --table.insert(wordWallWordList, "impossible")
    --table.insert(wordWallWordList, "independent")
    table.insert(wordWallWordList, "into")
    table.insert(wordWallWordList, "it's")
    table.insert(wordWallWordList, "its")
    -- "J" Letter Words
    table.insert(wordWallWordList, "journal")
    -- "K" Letter Words
    table.insert(wordWallWordList, "knew")
    table.insert(wordWallWordList, "know")
    -- "L" Letter Words
    table.insert(wordWallWordList, "laughed")
    table.insert(wordWallWordList, "let's")
    table.insert(wordWallWordList, "lovable")
    -- "M" Letter Words
    table.insert(wordWallWordList, "myself")
    -- "N" Letter Words
    table.insert(wordWallWordList, "new")
    table.insert(wordWallWordList, "no")
    -- "O" Letter Words
    table.insert(wordWallWordList, "off")
    table.insert(wordWallWordList, "one")
    table.insert(wordWallWordList, "our")
    -- "P" Letter Words
    table.insert(wordWallWordList, "people")
    table.insert(wordWallWordList, "prettier")
    table.insert(wordWallWordList, "prettiest")
    table.insert(wordWallWordList, "pretty")
    table.insert(wordWallWordList, "probably")
    -- "Q" Letter Words
    table.insert(wordWallWordList, "question")
    -- "R" Letter Words
    table.insert(wordWallWordList, "really")
    table.insert(wordWallWordList, "recycle")
    table.insert(wordWallWordList, "right")
    -- "S" Letter Words
    table.insert(wordWallWordList, "said")
    table.insert(wordWallWordList, "schools")
    table.insert(wordWallWordList, "something")
    table.insert(wordWallWordList, "sometimes")
    -- "T" Letter Words
    table.insert(wordWallWordList, "terrible")
    table.insert(wordWallWordList, "that's")
    table.insert(wordWallWordList, "their")
    table.insert(wordWallWordList, "then")
    table.insert(wordWallWordList, "there")
    table.insert(wordWallWordList, "they")
    table.insert(wordWallWordList, "they're")
    table.insert(wordWallWordList, "thought")
    table.insert(wordWallWordList, "threw")
    table.insert(wordWallWordList, "through")
    table.insert(wordWallWordList, "to")
    table.insert(wordWallWordList, "too")
    table.insert(wordWallWordList, "trouble")
    table.insert(wordWallWordList, "two")
    -- "U" Letter Words
    --table.insert(wordWallWordList, "unhappiness")
    table.insert(wordWallWordList, "until")
    table.insert(wordWallWordList, "usually")
    -- "V" Letter Words
    table.insert(wordWallWordList, "vacation")
    table.insert(wordWallWordList, "very")
    -- "W" Letter Words
    table.insert(wordWallWordList, "want")
    table.insert(wordWallWordList, "was")
    table.insert(wordWallWordList, "wear")
    table.insert(wordWallWordList, "weather")
    table.insert(wordWallWordList, "went")
    table.insert(wordWallWordList, "we're")
    table.insert(wordWallWordList, "were")
    table.insert(wordWallWordList, "what")
    table.insert(wordWallWordList, "when")
    table.insert(wordWallWordList, "where")
    table.insert(wordWallWordList, "whether")
    table.insert(wordWallWordList, "who")
    table.insert(wordWallWordList, "whole")
    table.insert(wordWallWordList, "winner")
    table.insert(wordWallWordList, "with")
    table.insert(wordWallWordList, "won")
    table.insert(wordWallWordList, "won't")
    table.insert(wordWallWordList, "wouldn't")
    table.insert(wordWallWordList, "write")
    -- "Y" Letter Words
    table.insert(wordWallWordList, "your")
    table.insert(wordWallWordList, "you're")
    
    highScore = readLocalData("highScore", 0)
    currentMoney = readLocalData("currentmoney", 0)
    -- create the scenes
    Scene("companylogo", CompanyLogo)
    Scene("gamelogo", GameLogo)
    Scene("mainmenu", MainMenu)
    Scene("maingame", MainGame)
    Scene("prestart", GameStartScreen)
    Scene("game", GameScene)
    Scene("timeup", TimeUpScene)
    Scene("pause", GamePause)
    Scene("pausescene", PauseScreen)
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