Store = class()

-- global to this file
local moveToMainMenuButton

function Store:init()
    -- you can accept and set parameters here
    moveToMainMenuButton = Button("Dropbox:Teal Back Circle Button", vec2(WIDTH/2-300, HEIGHT/2+420))   
end

function Store:draw()
    -- Codea does not automatically call this method
    background(69, 113, 64, 255)
    fill(255, 255, 255, 255)
    font("Palatino-Bold")
    fontSize(75)
    moveToMainMenuButton:draw()
    text("Store", WIDTH/2, HEIGHT/2+300)
end

function Store:touched(touch)
    -- Codea does not automatically call this method
    moveToMainMenuButton:touched(touch)
    
    if(moveToMainMenuButton.selected == true) then
        Scene.Change("mainmenu")
    end
end
