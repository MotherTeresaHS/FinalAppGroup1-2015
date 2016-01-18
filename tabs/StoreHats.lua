StoreHats = class()

-- global to this file
local moveToStoreButton
local hatOne 
local hatTwo
local hatThree
local hatFour
local hatFive
local hatSix

function StoreHats:init()
    -- you can accept and set parameters here
    sprite("Dropbox:hat7")
    moveToStoreButton = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/2-300, HEIGHT/2+420))
    hatOne = Button("Dropbox:hat 1", vec2(WIDTH/2+300, HEIGHT/2))
    hatTwo = Button("Dropbox:hat5", vec2(WIDTH/2+300, HEIGHT/2-120))
    hatThree = Button("Dropbox:hat6", vec2(WIDTH/2+300, HEIGHT/2-240))
    hatFour = Button("Dropbox:hat2", vec2(WIDTH/2, HEIGHT/2-120))
    hatFive = Button("Dropbox:hat", vec2(WIDTH/2-300, HEIGHT/2-240))
    hatSix = Button("Dropbox:hat4", vec2(WIDTH/2-300, HEIGHT/2))
    hatSeven = Button("Dropbox:hat7", vec2(WIDTH/2-300, HEIGHT/2-120))
end

function StoreHats:draw()
    -- Codea does not automatically call this method
    background(237, 255, 0, 255)
    moveToStoreButton:draw()
    hatOne:draw()
    hatTwo:draw()
    hatThree:draw()
    hatFour:draw()
    hatFive:draw()
    hatSix:draw()
    hatSeven:draw()
    
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
end

function StoreHats:touched(touch)
    -- Codea does not automatically call this method
    moveToStoreButton:touched(touch)
    hatOne:touched(touch)
    hatTwo:touched(touch)
    hatThree:touched(touch)
    hatFour:touched(touch)
    hatFive:touched(touch)
    hatSix:touched(touch)
    hatSeven:touched(touch)
    
    if(moveToStoreButton.selected == true) then
        Scene.Change("store")
    end
    if(hatOne.selected == true) then 
        if(currentMoney>=5)then
            currentMoney=currentMoney-5
            if(currentMoney < 4) then
                alert("not enough coins")
            end
        end
        
    end
    if(hatTwo.selected == true) then 
        if(currentMoney >= 10)then
            currentMoney = currentMoney -10
        if(currentMoney < 9) then
            alert("not enough coins")
         end
    end
    end
                
    if(hatThree.selected == true) then 
        if(currentMoney >= 15) then
            currentMoney=currentMoney-15
        end
    if(currentMoney < 14) then
            alert("not enough coins")
    end
    end 
    if(hatFour.selected == true) then 
        if(currentMoney >= 20) then
            currentMoney=currentMoney-20
        end
        if(currentMoney < 19) then
            alert("not enough coins")
    end
    end
    if(hatFive.selected == true) then 
        if(currentMoney >= 25) then
            currentMoney=currentMoney-25
        end
     if(currentMoney < 24) then
            alert("not enough coins")
    end
    end
    if(hatSix.selected == true) then 
        if(currentMoney >= 30) then
            currentMoney=currentMoney-30
        end
     if(currentMoney < 29) then
            alert("not enough coins")
    end
    end
    if(hatSeven.selected == true) then 
        if(currentMoney >= 35) then 
            currentMoney=currentMoney-35
        end
        if(currentMoney < 34) then
            alert("not enough coins")
    end
    end
end
                 
                    
                
