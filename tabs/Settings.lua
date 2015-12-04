Settings = class()

-- global to his file
local moveToMainMenuButton

function Settings:init()
    -- you can accept and set parameters here 
    moveToMainMenuButton = Button("Dropbox:Teal Back Circle Button", vec2(WIDTH/2-300, HEIGHT/2+420))
end

function Settings:draw()
    -- Codea does not automatically call this method
    background(238, 43, 159, 255)
    moveToMainMenuButton:draw()
end

function Settings:touched(touch)
    -- Codea does not automatically call this method
    moveToMainMenuButton:touched(touch)
    
    if(moveToMainMenuButton.selected == true) then
        Scene.Change("mainmenu")
    end
end
