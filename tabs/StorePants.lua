StorePants = class()

--global to this file
local moveToStoreButton3
local pantsOne
local pantsTwo
local pantsThree
local pantsFour
local pantsFive
local pantsSix

function StorePants:init()
    -- you can accept and set parameters here
    --sprite("Dropbox:pants")
    moveToStoreButton3 = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/2-300, HEIGHT/2+420))
    pantsOne = Button("Cargo Bot:Condition Blue", vec2(WIDTH/2+300, HEIGHT/2))
    pantsTwo = Button("Cargo Bot:Condition Green", vec2(WIDTH/2+300, HEIGHT/2-120))
    pantsThree = Button("Dropbox:pants", vec2(WIDTH/2+300, HEIGHT/2-240))
    pantsFour = Button("Cargo Bot:Condition Yellow", vec2(WIDTH/2, HEIGHT/2-120))
    pantsFive = Button("Cargo Bot:Condition Any", vec2(WIDTH/2-300, HEIGHT/2-240))
    pantsSix = Button("Dropbox:Star Black", vec2(WIDTH/2-300, HEIGHT/2))
    pantsSeven = Button("Dropbox:Star Gold", vec2(WIDTH/2-300, HEIGHT/2-120))
    
end

function StorePants:draw()
    -- Codea does not automatically call this method
    background(255, 255, 255, 255)
    moveToStoreButton3:draw()
    pantsOne:draw()
    pantsTwo:draw()
    pantsThree:draw()
    pantsFour:draw()
    pantsFive:draw()
    pantsSix:draw()
    pantsSeven:draw()
    
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

function StorePants:touched(touch)
    -- Codea does not automatically call this method
    moveToStoreButton3:touched(touch)
    pantsOne:touched(touch)
    pantsTwo:touched(touch)
    pantsThree:touched(touch)
    pantsFour:touched(touch)
    pantsFive:touched(touch)
    pantsSix:touched(touch)
    pantsSeven:touched(touch)
    
    if(moveToStoreButton3.selected == true) then
        Scene.Change("store")
    end
    if(pantsOne.selected == true) then
        if(currentMoney>=5)then
            currentMoney=currentMoney-5
            currentHat = 5
            saveLocalData("currentpants", currentPants)
        else
            alert("not enough coins")
        end
    end
    
    if(pantsTwo.selected == true) then
        if(currentMoney >= 10)then
            currentMoney = currentMoney - 10
            currentHat = 10
            saveLocalData("currentpants", currentPants)
        else
            alert("not enough coins")
        end
    end
    
    if(pantsThree.selected == true) then
        if(currentMoney >= 15) then
            currentMoney=currentMoney-15
            currentHat = 15
            saveLocalData("currentpants", currentPants)
        else
            alert("not enough coins")
        end
    end
    if(pantsFour.selected == true) then
        if(currentMoney >= 20) then
            currentMoney=currentMoney-20
            currentHat = 20
            saveLocalData("currentpants", currentPants)
        else
            alert("not enough coins")
        end
    end
    if(pantsFive.selected == true) then
        if(currentMoney >= 25) then
            currentMoney=currentMoney-25
            currentpants = 25
            saveLocalData("currentpants", currentPants)
        else
            alert("not enough coins")
        end
    end
    if(pantsSix.selected == true) then
        if(currentMoney >= 30) then
            currentMoney=currentMoney-30
            currentPants = 30
            saveLocalData("currentpanst", currentPants)
        else
            alert("not enough coins")
        end
    end
    if(pantsSeven.selected == true) then
        if(currentMoney >= 35) then
            currentMoney=currentMoney-35
            currentPants = 35
            saveLocalData("currentpants", currentPants)
        else
            alert("not enough coins")
        end
    end
end
