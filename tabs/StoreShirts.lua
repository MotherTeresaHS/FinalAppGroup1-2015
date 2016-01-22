StoreShirts = class()

--global to this file
local moveToStoreButton2
local shirtOne
local shirtTwo
local shirtThree
local shirtFour
local shirtFive
local shirtSix

function StoreShirts:init()
    -- you can accept and set parameters here
    moveToStoreButton2 = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/2-300, HEIGHT/2+420))
    shirtOne = Button("Cargo Bot:Condition Blue", vec2(WIDTH/2+300, HEIGHT/2))
    shirtTwo = Button("Cargo Bot:Condition Green", vec2(WIDTH/2+300, HEIGHT/2-120))
    shirtThree = Button("Cargo Bot:Condition None", vec2(WIDTH/2+300, HEIGHT/2-240))
    shirtFour = Button("Cargo Bot:Condition Yellow", vec2(WIDTH/2, HEIGHT/2-120))
    shirtFive = Button("Cargo Bot:Condition Any", vec2(WIDTH/2-300, HEIGHT/2-240))
    shirtSix = Button("Dropbox:Star Black", vec2(WIDTH/2-300, HEIGHT/2))
    shirtSeven = Button("Dropbox:Star Gold", vec2(WIDTH/2-300, HEIGHT/2-120))
    
end

function StoreShirts:draw()
    -- Codea does not automatically call this method
    background(255, 255, 255, 255)
    moveToStoreButton2:draw()
    shirtOne:draw()
    shirtTwo:draw()
    shirtThree:draw()
    shirtFour:draw()
    shirtFive:draw()
    shirtSix:draw()
    shirtSeven:draw()
    
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

function StoreShirts:touched(touch)
    -- Codea does not automatically call this method
    moveToStoreButton2:touched(touch)
    shirtOne:touched(touch)
    shirtTwo:touched(touch)
    shirtThree:touched(touch)
    shirtFour:touched(touch)
    shirtFive:touched(touch)
    shirtSix:touched(touch)
    shirtSeven:touched(touch)
    
    if(moveToStoreButton2.selected == true) then
        Scene.Change("store")
    end
    if(shirtOne.selected == true) then
        if(currentMoney>=5)then
            currentMoney=currentMoney-5
            currentShirt = 5
            saveLocalData("currentshirt", currentShirt)
        else
            alert("not enough coins")
        end
    end
    
    if(shirtTwo.selected == true) then
        if(currentMoney >= 10)then
            currentMoney = currentMoney - 10
            currentShirt = 10
            saveLocalData("currentshirt", currentShirt)
        else
            alert("not enough coins")
        end
    end
    
    if(shirtThree.selected == true) then
        if(currentMoney >= 15) then
            currentMoney=currentMoney-15
            currentShirt = 15
            saveLocalData("currentshirt", currentShirt)
        else
            alert("not enough coins")
        end
    end
    if(shirtFour.selected == true) then
        if(currentMoney >= 20) then
            currentMoney=currentMoney-20
            currentShirt = 20
            saveLocalData("currentshirt", currentShirt)
        else
            alert("not enough coins")
        end
    end
    if(shirtFive.selected == true) then
        if(currentMoney >= 25) then
            currentMoney=currentMoney-25
            currentShirt = 25
            saveLocalData("currentshirt", currentShirt)
        else
            alert("not enough coins")
        end
    end
    if(shirtSix.selected == true) then
        if(currentMoney >= 30) then
            currentMoney=currentMoney-30
            currentShirt = 30
            saveLocalData("currentshirt", currentShirt)
        else
            alert("not enough coins")
        end
    end
    if(shirtSeven.selected == true) then
        if(currentMoney >= 35) then
            currentMoney=currentMoney-35
            currentShirt = 35
            saveLocalData("currentshirt", currentShirt)
        else
            alert("not enough coins")
        end
    end
end