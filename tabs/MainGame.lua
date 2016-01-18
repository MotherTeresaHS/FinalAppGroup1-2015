MainGame = class()

-- global to this file
local moveToMainMenuButton
local highScoreIncreaseButton
local highScoreDecreaseButton
local currentMoneyIncreaseButton
local currentMoneyDecreaseButton

function MainGame:init()
    -- you can accept and set parameters here
    moveToMainMenuButton = Button("Dropbox:Teal Back Circle Button", vec2(WIDTH/2-300, HEIGHT/2+420))
    highScoreIncreaseButton = Button("Dropbox:Teal Forward Circle Button", vec2(WIDTH/2+150, HEIGHT/2+150))
    highScoreDecreaseButton = Button("Dropbox:Teal Back Circle Button", vec2(WIDTH/2-150, HEIGHT/2+150))
    currentMoneyIncreaseButton = Button("Dropbox:Teal Forward Circle Button", vec2(WIDTH/2+100, HEIGHT/2-50))
    currentMoneyDecreaseButton = Button("Dropbox:Teal Back Circle Button", vec2(WIDTH/2-100, HEIGHT/2-50))
end
sprite()

function MainGame:draw()
    -- Codea does not automatically call this method
    background(219, 10, 83, 255)
    moveToMainMenuButton:draw()
    highScoreIncreaseButton:draw()
    highScoreDecreaseButton:draw()
    currentMoneyIncreaseButton:draw()
    currentMoneyDecreaseButton:draw()
    
    text("Highscore = "..math.floor(highScore), WIDTH/2, HEIGHT/2+150)
    text("$"..math.floor(currentMoney), WIDTH/2, HEIGHT/2-50)
end

function MainGame:touched(touch)
    -- Codea does not automatically call this method
    moveToMainMenuButton:touched(touch)
    highScoreIncreaseButton:touched(touch)
    highScoreDecreaseButton:touched(touch)
    currentMoneyIncreaseButton:touched(touch)
    currentMoneyDecreaseButton:touched(touch)
    
    if(moveToMainMenuButton.selected == true) then
        Scene.Change("mainmenu")
    end
    if(highScoreIncreaseButton.selected == true) then
        highScore = highScore + 1
        saveLocalData("highScore", highScore)
    end
    if(highScoreDecreaseButton.selected == true) then
        highScore = highScore - 1
        saveLocalData("highScore", highScore)
    end
    if(currentMoneyIncreaseButton.selected == true) then
        currentMoney = currentMoney + 1
        saveLocalData("currentmoney", currentMoney)
    end
    if(currentMoneyDecreaseButton.selected == true) then
        currentMoney = currentMoney - 1
        saveLocalData("currentmoney", currentMoney)
    end
end