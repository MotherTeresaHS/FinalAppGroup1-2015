--


GameLogo = class()

-- global to this file
local startTime

function GameLogo:init()
    -- you can accept and set parameters here
    startTime = ElapsedTime
end

function GameLogo:draw()
    -- Codea does not automatically call this method
    sprite("Dropbox:GameLogo", WIDTH/2, HEIGHT/2)
    --print(ElapsedTime)
    --print("End time is " .. startTime + 3)
    
    if(startTime + 3 < ElapsedTime) then
        Scene.Change("mainmenu")
        --print("The end time is " .. ElapsedTime)
    end
end

function GameLogo:touched(touch)
    -- Codea does not automatically call this method
    Scene.Touched(touch)
end
