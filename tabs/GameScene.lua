--# GameScene
-- Kyle Boulay
-- Grade 3's App
-- App Development
-- This Program's Idea Was Done All By The Grade 3's




GameScene = class()

local listOfLetters = {}
local moveToPause
local startTime
local theWord



function GameScene:init()

    local lengthOfWordWallList = #wordWallWordList
    local theWordNumberToPick = math.random(1, lengthOfWordWallList)
    theWord = wordWallWordList[theWordNumberToPick]

    moveToPause = Button("Dropbox:Blue Pause Button", vec2(WIDTH/2 -300, HEIGHT/2 +425))

    startTime = ElapsedTime







end

function GameScene:draw()

    sprite("Documents:Grade 3 Game Background", 384, 512, 768, 1024)
    fill(0, 255, 0, 255)
    rect(0, 0, 768, 50)
    fill(0, 0, 255, 255)
    rect(2, 2, 763, 45)
    fill(0, 255, 0, 255)
    rect(70, 0, 3, 50)
    rect(140, 0, 3, 50)
    rect(210, 0, 3, 50)
    rect(280, 0, 3, 50)
    rect(350, 0, 3, 50)
    rect(420, 0, 3, 50)
    rect(490, 0, 3, 50)
    rect(560, 0, 3, 50)
    rect(630, 0, 3, 50)
    rect(700, 0, 3, 50)
    rect(770, 0, 3, 50)

    if (#wordWallWordList > 0) then
        local letterCounter = 1
        while (letterCounter <= #wordWallWordList) do
            wordWallWordList[theWordNumberToPick]:draw()

            --move letters down the screen
            wordWallWordList[theWordNumberToPick].objectCurrentLocation.y = wordWallWordList[theWordNumberToPick].objectCurrentLocation.y - 1

    end
    end

    moveToPause:draw()



    fill(255, 0, 0, 255)
    fontSize(75)
    font("ArialRoundedMTBold")
    text(ElapsedTime, 890, 950)


    if(startTime + 30 < ElapsedTime) then
        Scene.Change("timeup")
    end

end

function GameScene:touched(touch)


moveToPause:touched(touch)

    if(moveToPause.selected == true) then
        Scene.Change("pause")
    end





end