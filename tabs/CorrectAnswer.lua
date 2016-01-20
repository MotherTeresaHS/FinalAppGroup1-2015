--


CorrectAnswer = class()

-- global to this file
local startTime

function CorrectAnswer:init()
    -- you can accept and set parameters here
    startTime = ElapsedTime
    speech.say("Correct!")
end

function CorrectAnswer:draw()
    -- Codea does not automatically call this method
    text("Correct", 300,400)
    
        if(startTime + 1 < ElapsedTime) then
        Scene.Change("game")
        --print("The end time is " .. ElapsedTime)
    end
end

function CorrectAnswer:touched(touch)
    -- Codea does not automatically call this method
end
