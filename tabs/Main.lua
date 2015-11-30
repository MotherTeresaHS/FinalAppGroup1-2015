-- Main
-- FinalAppGroup1-2015

-- Created by: Alexandra Kuhn
-- Created on: Nov 23 2015
-- Created for: ICS2O
-- This is the main starting point.

-- Test commit by Mr.Coxall

-- Use this function to perform your initial setup
function setup()
    
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    -- create the scenes
    Scene("companylogo", CompanyLogo)
    Scene("gamelogo", GameLogo)
    Scene("play", MainScene)
    Scene("maingame", MainGame)
    Scene("artwork", Artwork)
    Scene("store", Store)
    Scene("hats", StoreHats)
    Scene("shirts", StoreShirts)
    Scene("pants", StorePants)
    Scene("glasses", StoreGlasses)
    Scene("belts", StoreBelts)
    Scene("socks", StoreSocks)
    Scene("gloves", StoreGloves)
    
       
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