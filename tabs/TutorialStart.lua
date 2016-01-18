TutorialStart = class()

-- global to this file
local moveToTutorialButton

function TutorialStart:init()
    -- you can accept and set parameters here
    moveToTutorialButton = Button("Dropbox:Teal Back Circle Button", vec2(WIDTH/2-300, HEIGHT/2+420))
end

function TutorialStart:draw()
    -- Codea does not automatically call this method
    background(255, 231, 0, 255)
    moveToTutorialButton:draw()
end

function TutorialStart:touched(touch)
    -- Codea does not automatically call this method
    moveToTutorialButton:touched(touch)
    if(moveToTutorialButton.selected == true) then
        Scene.Change("tutorial")
    end
end
