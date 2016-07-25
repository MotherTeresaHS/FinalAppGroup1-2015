--# GameStartScreen
-- Kyle Boulay
-- Grade 3's App
-- App Development
-- This Program's Idea Was All Done By The Grade 3's

GameStartScreen = class()

local moveToGameScene

function GameStartScreen:init()

    moveToGameScene = Button("Dropbox:Green Forward Circle Button", vec2(WIDTH/2, 375))
    currentScore = 0

end

function GameStartScreen:draw()
    sprite("Documents:Grade 3 Game Background", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)


    fill(0, 0, 0, 255)
    rect(100, 300, 575, 575)
    fill(0, 0, 255, 255)
    rect(102, 302, 570, 570)
    fill(0, 255, 0, 255)
    fontSize(45)
    text("You start with 30", 295, 825)
    text("seconds to spell a", 315, 775)
    text("short word and every", 350, 725)
    text("word you get right,", 330, 675)
    text("another word shows", 335, 625)
    text("up. Try to spell", 280, 575)
    text("as many words as", 315, 525)
    text("you can in 30 seconds.", 360, 475)

    moveToGameScene:draw()

end

function GameStartScreen:touched(touch)

    moveToGameScene:touched(touch)
    if(moveToGameScene.selected == true) then
        timeLeftOnClock = 30
        startTime = ElapsedTime
        currentScore = 0
        
        Scene.Change("game")
    end
end