StoreGlasses = class()

--global to this file
local moveToStoreButton4
local glassesOne
local glassesTwo
local glassesThree
local glassesFour
local glassesFive
local glassesSix

function StoreGlasses:init()
    -- you can accept and set parameters here
    --sprite("Dropbox:glasses10")
    moveToStoreButton4 = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/2-300, HEIGHT/2+420))
    glassesOne = Button("Dropbox:glasses2", vec2(WIDTH/2+300, HEIGHT/2))
    glassesTwo = Button("Dropbox:glasses4", vec2(WIDTH/2+300, HEIGHT/2-120))
    glassesThree = Button("Dropbox:glasses6", vec2(WIDTH/2+300, HEIGHT/2-240))
    glassesFour = Button("Dropbox:glasses8", vec2(WIDTH/2, HEIGHT/2-120))
    glassesFive = Button("Dropbox:glasses3", vec2(WIDTH/2-300, HEIGHT/2-240))
    glassesSix = Button("Dropbox:glasses10", vec2(WIDTH/2-300, HEIGHT/2))
    glassesSeven = Button("Dropbox:glasses7", vec2(WIDTH/2-300, HEIGHT/2-120))
    
end

function StoreGlasses:draw()
    -- Codea does not automatically call this method
    background(255, 255, 255, 255)
    moveToStoreButton4:draw()
    glassesOne:draw()
    glassesTwo:draw()
    glassesThree:draw()
    glassesFour:draw()
    glassesFive:draw()
    glassesSix:draw()
    glassesSeven:draw()
    
    fill(0, 0, 255, 255)
    fontSize(50)
    text("$5", 580,520 )
    fill(0, 0, 255, 255)
    fontSize(50)
    text("$10", 580,400 )
    fill(0, 0, 255, 255)
    fontSize(50)
    text("$15", 580,270 )
    fill(0, 0, 255, 255)
    fontSize(50)
    text("$20", 386.5,450 )
    fill(0, 0, 255, 255)
    fontSize(50)
    text("$35",195,520 )
    fill(0, 0, 255, 255)
    fontSize(50)
    text("$25", 195,270 )
    fill(0, 0, 255, 255)
    fontSize(50)
    text("$30", 195,390 )
    fill(0, 0, 255, 255)
    text("$"..math.floor(currentMoney), 397, 800)
    fill(0, 0, 255, 255)
    fontSize(50)
    text("select one to buy", 386.5,200 )
    text("$"..math.floor(currentMoney), 397, 800)
    
end

function StoreGlasses:touched(touch)
    -- Codea does not automatically call this method
    moveToStoreButton4:touched(touch)
    glassesOne:touched(touch)
    glassesTwo:touched(touch)
    glassesThree:touched(touch)
    glassesFour:touched(touch)
    glassesFive:touched(touch)
    glassesSix:touched(touch)
    glassesSeven:touched(touch)
    
    if(moveToStoreButton4.selected == true) then
        Scene.Change("store")
    end
    if(glassesOne.selected == true) then
        if(currentMoney>=5)then
            currentMoney=currentMoney-5
            currentHat = 5
            saveLocalData("currentglasses", currentGlasses)
        else
            alert("not enough coins")
        end
    end
    
    if(glassesTwo.selected == true) then
        if(currentMoney >= 10)then
            currentMoney = currentMoney - 10
            currentHat = 10
            saveLocalData("currentglasses", currentGlasses)
        else
            alert("not enough coins")
        end
    end
    
    if(glassesThree.selected == true) then
        if(currentMoney >= 15) then
            currentMoney=currentMoney-15
            currentHat = 15
            saveLocalData("currentglasses", currentglasses)
        else
            alert("not enough coins")
        end
    end
    if(glassesFour.selected == true) then
        if(currentMoney >= 20) then
            currentMoney=currentMoney-20
            currentHat = 20
            saveLocalData("currentglasses", currentGlasses)
        else
            alert("not enough coins")
        end
    end
    if(glassesFive.selected == true) then
        if(currentMoney >= 25) then
            currentMoney=currentMoney-25
            currentpants = 25
            saveLocalData("currentglasses", currentGlasses)
        else
            alert("not enough coins")
        end
    end
    if(glassesSix.selected == true) then
        if(currentMoney >= 30) then
            currentMoney=currentMoney-30
            currentPants = 30
            saveLocalData("currentglasses", currentGlasses)
        else
            alert("not enough coins")
        end
    end
    if(glassesSeven.selected == true) then
        if(currentMoney >= 35) then
            currentMoney=currentMoney-35
            currentPants = 35
            saveLocalData("currentglasses", currentGlasses)
        else
            alert("not enough coins")
        end
    end
end