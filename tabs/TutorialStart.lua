TutorialStart = class()

-- global to this file
local moveToTutorialButton
local firstScene
local secondScene
local thirdScene
local fourthScene
local lastScene
local currentTutorialScene

function TutorialStart:init()
    -- you can accept and set parameters here
    currentTutorialScene = 1
    
    moveToTutorialButton = Button("Dropbox:Teal Back Circle Button", vec2(WIDTH/2-300, HEIGHT/2+420))
    continueTutorialButton = Button("Dropbox:Teal Forward Circle Button", vec2(WIDTH/2, HEIGHT/2-100))
    firstScene = Button("Dropbox:firstScene", vec2(WIDTH/2, HEIGHT/2))
    secondScene = Button("Dropbox:secondScene", vec2(WIDTH/2, HEIGHT/2))
    thirdScene = Button("Dropbox:thirdScene", vec2(WIDTH/2, HEIGHT/2))
    fourthScene = Button("Dropbox:fourthScene", vec2(WIDTH/2, HEIGHT/2))
    lastScene = Button("Dropbox:lastScene", vec2(WIDTH/2, HEIGHT/2))
end

sprite("Dropbox:secondScene")
function TutorialStart:draw()
    -- Codea does not automatically call this method
    background(255, 231, 0, 255)
    fill(255, 255, 255, 255)
    fontSize(25)
    
    if(currentTutorialScene == 1) then
        firstScene:draw()
    elseif (currentTutorialScene == 2) then
        secondScene:draw()
    end
    if(currentTutorialScene == 3) then
        thirdScene:draw()
    elseif (currentTutorialScene == 4) then
        lastScene:draw()
    end
    if(currentTutorialScene == 5) then
        Scene.Change("mainmenu")
    end
    
    moveToTutorialButton:draw()
    continueTutorialButton:draw()
end

function TutorialStart:touched(touch)
    -- Codea does not automatically call this method
    moveToTutorialButton:touched(touch)
    continueTutorialButton:touched(touch)
    if(moveToTutorialButton.selected == true) then
        Scene.Change("tutorial")
    end
    if(continueTutorialButton.selected == true) then
        currentTutorialScene = currentTutorialScene + 1
    end
    
end
