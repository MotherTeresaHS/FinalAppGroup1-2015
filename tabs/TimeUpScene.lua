--# TimeUpScene
TimeUpScene = class()

local moveBackToGame

function TimeUpScene:init()
    -- you can accept and set parameters here

    moveBackToGame = Button("Dropbox:Green Return Button", vec2(WIDTH/2, HEIGHT/2 -120))
    speech.say("Time is up!")
    speech.say("You got" .. math.floor(currentScore) .. " words correct.")

end

function TimeUpScene:draw()
    -- Codea does not automatically call this method

    background(255, 0, 0, 255)
    fontSize(55)
    text("Time is up!", WIDTH/2, HEIGHT/2)
    text("You got ", WIDTH/2, HEIGHT/2-200)
    text(math.floor(currentScore) .. " words correct.", WIDTH/2, HEIGHT/2-275)
    print(currentMoney)
    
    moveBackToGame:draw()

end

function TimeUpScene:touched(touch)
    -- Codea does not automatically call this method

    moveBackToGame:touched(touch)
    if(moveBackToGame.selected == true) then
        Scene.Change("prestart")
    end

end
