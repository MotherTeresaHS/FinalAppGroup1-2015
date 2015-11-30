GameLogo = class()
-- global to thus file
local startTime

function GameLogo:init()
    -- you can accept and set parameters here
    startTime = ElapsedTime
end

function GameLogo:draw()
    -- Codea does not automatically call this method
    background(255, 205, 0, 255)
    print(ElapsedTime)
    print("End time is " .. startTime + 6)
    if(startTime + 6 < ElapsedTime) then
        Scene.Change("maingame")
        print("The end time is " .. ElapsedTime)
        end
end

function GameLogo:touched(touch)
    -- Codea does not automatically call this method
end
