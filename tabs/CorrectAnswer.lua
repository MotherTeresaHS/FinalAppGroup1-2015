CorrectAnswer = class()

-- global to this file
local startTime

function CorrectAnswer:init()
    -- you can accept and set parameters here
    startTime = ElapsedTime
    speech.say("Correct!")
    --noSmooth()
    --noStroke()
    --noFill()
    --fontSize(nil)
    --pushStyle()

end

function CorrectAnswer:draw()
    -- Codea does not automatically call this method
    background(255, 255, 255, 255)
    fill(0, 255, 0, 255)
    font("ArialRoundedMTBold")
    fontSize(100)
    text("Correct", 384, 512)
    pushStyle()
    popStyle()

        if(startTime + 1 < ElapsedTime) then
        Scene.Change("game")
        --print("The end time is " .. ElapsedTime)
    end
end

function CorrectAnswer:touched(touch)
    -- Codea does not automatically call this method
end