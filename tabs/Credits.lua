Credits = class()

-- global to this file
local moveToMainMenuButton

function Credits:init()
    -- you can accept and set parameters here
    moveToMainMenuButton = Button("Dropbox:Teal Back Circle Button", vec2(WIDTH/2-300, HEIGHT/2+420))
end

function Credits:draw()
    -- Codea does not automatically call this method
    background(20, 0, 255, 255)
    fill(255, 255, 255, 255)
    font("Palatino-Bold")
    fontSize(75)
    moveToMainMenuButton:draw()
    text("Credits", WIDTH/2, HEIGHT/2+300)
    text("Main Menu")
end

function Credits:touched(touch)
    -- Codea does not automatically call this method
    moveToMainMenuButton:touched(touch)
    
    if(moveToMainMenuButton.selected == true) then
        Scene.Change("mainmenu")
    end
end