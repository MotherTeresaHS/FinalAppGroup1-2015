--


CorrectAnswer = class()

-- global to this file
local startTime

function CorrectAnswer:init()
    -- you can accept and set parameters here
    startTime = ElapsedTime
    speech.say("Correct!")
    
    currentMoney = currentMoney + 5
    currentScore = currentScore + 1
end

function CorrectAnswer:draw()
    -- Codea does not automatically call this method
    
    background(0, 255, 0, 255)
    fontSize(55)
    text("Correct", WIDTH/2, HEIGHT/2)
    
        if(startTime + 1 < ElapsedTime) then
        Scene.Change("game")
        --print("The end time is " .. ElapsedTime)
    end
end

function CorrectAnswer:touched(touch)
    -- Codea does not automatically call this method
end
