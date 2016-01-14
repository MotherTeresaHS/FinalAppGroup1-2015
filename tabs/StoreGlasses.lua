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
--sprite("Cargo Bot:Condition Blue")
    moveToStoreButton4 = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/2-300, HEIGHT/2+420))
    glassesOne = Button("Cargo Bot:Condition Blue", vec2(WIDTH/2+300, HEIGHT/2))
    glassesTwo = Button("Cargo Bot:Condition Green", vec2(WIDTH/2+300, HEIGHT/2-120))
    glassesThree = Button("Cargo Bot:Condition None", vec2(WIDTH/2+300, HEIGHT/2-240))
    glassesFour = Button("Cargo Bot:Condition Yellow", vec2(WIDTH/2, HEIGHT/2-120))
    glassesFive = Button("Dropbox:glasses3", vec2(WIDTH/2-300, HEIGHT/2-240))
    glassesSix = Button("Dropbox:glasses 5", vec2(WIDTH/2-300, HEIGHT/2))
    glassesSeven = Button("Dropbox:Star Black", vec2(WIDTH/2-300, HEIGHT/2-120))
    
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
        end
          if(currentMoney < 5) then
            alert("not enough coins")
    end
    end
            
    if(glassesTwo.selected == true) then 
        if(currentMoney>=10)then
            currentMoney=currentMoney-10
        end
         if(currentMoney < 9) then
            alert("not enough coins")
    end
    end
                
    if(glassesThree.selected == true) then 
        if(currentMoney >= 15) then
            currentMoney=currentMoney-15
        end
          if(currentMoney < 14) then
            alert("not enough coins")
    end
    end
    if(glassesFour.selected == true) then 
        if(currentMoney >= 20) then
            currentMoney=currentMoney-20
        end
          if(currentMoney < 19) then
            alert("not enough coins")
    end
    end
    if(glassesFive.selected == true) then 
        if(currentMoney >= 25) then
            currentMoney=currentMoney-25
        end
          if(currentMoney < 24) then
            alert("not enough coins")
    end
    end
    if(glassesSix.selected == true) then 
        if(currentMoney >= 30) then
            currentMoney=currentMoney-30
        end
          if(currentMoney < 29) then
            alert("not enough coins")
    end
    end
    if(glassesSeven.selected == true) then 
        if(currentMoney >= 35) then 
            currentMoney=currentMoney-35
        end
          if(currentMoney < 34) then
            alert("not enough coins")
    end
    end
end
    