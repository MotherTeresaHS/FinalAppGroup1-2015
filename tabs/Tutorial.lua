Tutorial = class()

-- global to this file
local moveToMainMenuButton
local tutorialStartButton

function Tutorial:init()
    -- you can accept and set parameters here
    moveToMainMenuButton = Button("Dropbox:Teal Back Circle Button", vec2(WIDTH/2-300, HEIGHT/2+420))
    tutorialStartButton = Button("Dropbox:Teal Move Scene Forward Button", vec2(WIDTH/2, HEIGHT/2-100))
end

function Tutorial:draw()
    -- Codea does not automatically call this method
   -- background(237, 137, 20, 255)
    sprite("Dropbox:background", WIDTH/2, HEIGHT/2)
    fill(0, 0, 0, 255)
    font("Palatino-Bold")
    fontSize(75)
    moveToMainMenuButton:draw()
    tutorialStartButton:draw()
    text("Tutorial", WIDTH/2, HEIGHT/2+300)
    fontSize(40)
    text("Welcome to Letter Drop!", WIDTH/2, HEIGHT/2+150)
    fontSize(25)
    text("*Tap the button to begin*", WIDTH/2, HEIGHT/2+100)
end

function Tutorial:touched(touch)
    -- Codea does not automatically call this method
    moveToMainMenuButton:touched(touch)
    tutorialStartButton:touched(touch)
    
    if(moveToMainMenuButton.selected == true) then
        Scene.Change("mainmenu")
    end
    if (tutorialStartButton.selected == true) then
        Scene.Change("tutorialstart")
    end
end

