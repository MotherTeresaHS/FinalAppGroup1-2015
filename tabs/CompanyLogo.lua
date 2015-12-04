CompanyLogo = class()

-- global to this file
local startTime

function CompanyLogo:init()
    -- you can accept and set parameters here
    startTime = ElapsedTime
end

function CompanyLogo:draw()
    -- Codea does not automatically call this method
    sprite("Dropbox:CompanyLogo", WIDTH/2, HEIGHT/2)
    print(ElapsedTime)
    print("End time is " .. startTime + 3)
    
    if(startTime + 3 < ElapsedTime) then
        Scene.Change("gamelogo")
        print("The end time is " .. ElapsedTime)
    end
end

function CompanyLogo:touched(touch)
    -- Codea does not automatically call this method
    Scene.Touched(touch)
end