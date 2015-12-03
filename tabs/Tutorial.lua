Tutorial = class()

-- global to this file
local moveToMainMenuButton

function Tutorial:init()
    -- you can accept and set parameters here
    moveToMainMenuButton = Button("Dropbox:Teal Back Circle Button", vec2(WIDTH/2-300, HEIGHT/2+420))
end

function Tutorial:draw()
    -- Codea does not automatically call this method
    background(187, 0, 255, 255)
    moveToMainMenuButton:draw()
end

function Tutorial:touched(touch)
    -- Codea does not automatically call this method
    moveToMainMenuButton:touched(touch)
    
    if(moveToMainMenuButton.selected == true) then
        Scene.Change("mainmenu")
    end
end
