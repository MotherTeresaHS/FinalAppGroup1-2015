 Store = class()

-- global to this file
local moveToMainMenuButton
local hatsButton
local shirtsButton
local pantsButton
local glassesButton
local robot

local hatOne
local hatTwo
local hatThree
local hatFour
local hatFive
local hatSix

local hatOne
local hatTwo
local hatThree
local hatFour
local hatFive
local hatSix

local pantsOne
local pantsTwo
local pantsThree
local pantsFour
local pantsFive
local pantsSix

local glassesOne
local glassesTwo
local glassesThree
local glassesFour
local glassesFive
local glassesSix


function Store:init()
    -- you can accept and set parameters
    sprite("Dropbox:glasses9")
    moveToMainMenuButton = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/2-300, HEIGHT/2+420))
    robot = Button("Dropbox:robot", vec2(WIDTH/2, HEIGHT/2))
    hatsButton = Button("Dropbox:hat 1", vec2(WIDTH/2+300, HEIGHT/2-250))
    shirtsButton = Button("Dropbox:robotChest", vec2(WIDTH/2+300, HEIGHT/2-120))
    pantsButton = Button("Dropbox:pants", vec2(WIDTH/2-300, HEIGHT/2-120))
    glassesButton = Button("Dropbox:glasses9", vec2(WIDTH/2-300, HEIGHT/2-250))
    
    hatOne = Button("Dropbox:hat 1", vec2(WIDTH/2, HEIGHT/2+150))
    hatTwo = Button("Dropbox:hat5", vec2(WIDTH/2, HEIGHT/2+125))
    hatThree = Button("Dropbox:hat6", vec2(WIDTH/2, HEIGHT/2+130))
    hatFour = Button("Dropbox:hat2", vec2(WIDTH/2, HEIGHT/2+150))
    hatFive = Button("Dropbox:hat", vec2(WIDTH/2, HEIGHT/2+150))
    hatSix = Button("Dropbox:hat4", vec2(WIDTH/2, HEIGHT/2+130))
    hatSeven = Button("Dropbox:hat7", vec2(WIDTH/2, HEIGHT/2+150))
    
    shirtOne = Button("Cargo Bot:Condition Blue", vec2(WIDTH/2, HEIGHT/2))
    shirtTwo = Button("Cargo Bot:Condition Green", vec2(WIDTH/2, HEIGHT/2))
    shirtThree = Button("Cargo Bot:Condition None", vec2(WIDTH/2, HEIGHT/2))
    shirtFour = Button("Cargo Bot:Condition Yellow", vec2(WIDTH/2, HEIGHT/2))
    shirtFive = Button("Cargo Bot:Condition Any", vec2(WIDTH/2, HEIGHT/2))
    shirtSix = Button("Dropbox:Star Black", vec2(WIDTH/2, HEIGHT/2))
    shirtSeven = Button("Dropbox:Star Gold", vec2(WIDTH/2, HEIGHT/2))
    
    pantsOne = Button("Cargo Bot:Condition Blue", vec2(WIDTH/2, HEIGHT/2))
    pantsTwo = Button("Cargo Bot:Condition Green", vec2(WIDTH/2, HEIGHT/2))
    pantsThree = Button("Dropbox:pants", vec2(WIDTH/2, HEIGHT/2))
    pantsFour = Button("Cargo Bot:Condition Yellow", vec2(WIDTH/2, HEIGHT/2))
    pantsFive = Button("Cargo Bot:Condition Any", vec2(WIDTH/2, HEIGHT/2))
    pantsSix = Button("Dropbox:Star Black", vec2(WIDTH/2, HEIGHT/2))
    pantsSeven = Button("Dropbox:Star Gold", vec2(WIDTH/2, HEIGHT/2))
    
    glassesOne = Button("Cargo Bot:Condition Blue", vec2(WIDTH/2, HEIGHT/2-200))
    glassesTwo = Button("Cargo Bot:Condition Green", vec2(WIDTH/2, HEIGHT/2))
    glassesThree = Button("Cargo Bot:Condition None", vec2(WIDTH/2, HEIGHT/2))
    glassesFour = Button("Cargo Bot:Condition Yellow", vec2(WIDTH/2, HEIGHT/2))
    glassesFive = Button("Dropbox:glasses3", vec2(WIDTH/2, HEIGHT/2))
    glassesSix = Button("Dropbox:glasses 5", vec2(WIDTH/2, HEIGHT/2))
    glassesSeven = Button("Dropbox:Star Black", vec2(WIDTH/2, HEIGHT/2))
    
    
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
    
    fill(0, 0, 255, 255)
    fontSize(50)
    text("chose one", 386.5,200 )
    
    if(currentHat == 5) then
        hatOne:draw()
    end
    if(currentHat == 10) then
        hatTwo:draw()
    end
    if(currentHat == 15) then
        hatThree:draw()
    end
    if(currentHat == 20) then
        hatFour:draw()
    end
    if(currentHat == 25) then
        hatFive:draw()
    end
    if(currentHat == 30) then
        hatSix:draw()
    end
    if(currentHat == 35) then
        hatSeven:draw()
    end
    if(currentShirt == 5) then
        shirtOne:draw()
    end
    if(currentShirt == 10) then
        shirtTwo:draw()
    end
    if(currentShirt == 15) then
        shirtThree:draw()
    end
    if(currentShirt == 20) then
        shirtFour:draw()
    end
    if(currentShirt == 25) then
        shirtFive:draw()
    end
    if(currentShirt == 30) then
        shirttSix:draw()
    end
    if(currentShirt == 35) then
        shirtSeven:draw()
    end
    if(currentPants == 5) then
        shirtOne:draw()
    end
    if(currentPants == 10) then
        shirtTwo:draw()
    end
    if(currentPants == 15) then
        shirtThree:draw()
    end
    if(currentPants == 20) then
        shirtFour:draw()
    end
    if(currentPants == 25) then
        shirtFive:draw()
    end
    if(currentPants == 30) then
        shirttSix:draw()
    end
    if(currentPants == 35) then
        shirtSeven:draw()
    end
    if(currentGlasses == 5) then
        shirtOne:draw()
    end
    if(currentGlasses == 10) then
        shirtTwo:draw()
    end
    if(currentGlasses == 15) then
        shirtThree:draw()
    end
    if(currentGlasses == 20) then
        shirtFour:draw()
    end
    if(currentGlasses == 25) then
        shirtFive:draw()
    end
    if(currentGlasses == 30) then
        shirttSix:draw()
    end
    if(currentGlasses == 35) then
        shirtSeven:draw()
    end
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