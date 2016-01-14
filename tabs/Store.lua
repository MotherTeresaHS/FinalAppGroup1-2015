Store = class()

-- global to this file
local moveToMainMenuButton
local hatsButton
local shirtsButton
local pantsButton 
local glassesButton
local robot

function Store:init()
    -- you can accept and set parameters
    sprite("Dropbox:glasses 3")
   moveToMainMenuButton = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/2-300, HEIGHT/2+420))
    robot = Button("Dropbox:robot", vec2(WIDTH/2, HEIGHT/2))
    hatsButton = Button("Dropbox:hat 1", vec2(WIDTH/2+300, HEIGHT/2-250))
    shirtsButton = Button("Dropbox:robotChest", vec2(WIDTH/2+300, HEIGHT/2-120))
    pantsButton = Button("Dropbox:pants", vec2(WIDTH/2-300, HEIGHT/2-120))
    glassesButton = Button("Dropbox:glasses 3", vec2(WIDTH/2-300, HEIGHT/2-250))
end

function Store:draw()
    -- Codea does not automatically call this method
    background(106, 45, 45, 255)
    moveToMainMenuButton:draw()
    hatsButton:draw()
    shirtsButton:draw()
    pantsButton:draw()
    glassesButton:draw()
    robot:draw()
end

function Store:touched(touch)
    -- Codea does not automatically call this method
    moveToMainMenuButton:touched(touch)
    hatsButton:touched(touch)
    shirtsButton:touched(touch)
    pantsButton:touched(touch)
    glassesButton:touched(touch)
    
    if(moveToMainMenuButton.selected == true) then
        Scene.Change("mainmenu")
    end
    if(hatsButton.selected == true) then
        Scene.Change("hats")
    end
    if(shirtsButton.selected == true) then
        Scene.Change("shirts")
    end
    if(pantsButton.selected == true) then
        Scene.Change("pants")
    end
    if(glassesButton.selected == true) then
        Scene.Change("glasses")
    end
end   