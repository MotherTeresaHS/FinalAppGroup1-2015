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
    text("$5", 597,520 )
    fill(0, 0, 255, 255)
    fontSize(50)
    text("$10", 597,400 )
    fill(0, 0, 255, 255)
    fontSize(50)
    text("$15", 597,270 )
    fill(0, 0, 255, 255)
    fontSize(50)
    text("$20", 397,450 )
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
        end
        if(currentMoney < 4) then
            alert("not enough coins")
    end
    end
    if(shirtTwo.selected == true) then 
        if(currentMoney >= 10)then
            currentMoney = currentMoney -10
        end
        if(currentMoney < 9) then
            alert("not enough coins")
    end
    end
                
    if(shirtThree.selected == true) then 
        if(currentMoney >= 15) then
            currentMoney=currentMoney-15
        end
    if(currentMoney < 14) then
            alert("not enough coins")
    end
    end 
    if(shirtFour.selected == true) then 
        if(currentMoney >= 20) then
            currentMoney=currentMoney-20
        end
        if(currentMoney < 19) then
            alert("not enough coins")
    end
    end
    if(shirtFive.selected == true) then 
        if(currentMoney >= 25) then
            currentMoney=currentMoney-25
        end
     if(currentMoney < 24) then
            alert("not enough coins")
    end
    end
    if(shirtSix.selected == true) then 
        if(currentMoney >= 30) then
            currentMoney=currentMoney-30
        end
     if(currentMoney < 29) then
            alert("not enough coins")
    end
    end
    if(shirtSeven.selected == true) then 
        if(currentMoney >= 35) then 
            currentMoney=currentMoney-35
        end
        if(currentMoney < 34) then
            alert("not enough coins")
    end
    end
 
      end