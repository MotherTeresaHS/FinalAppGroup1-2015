-- Kyle Boulay
-- Grade 3's App
-- App Development
-- This Program's Idea Was Done All By The Grade 3's

GameScene = class()

local listOfLetters = {}
local moveToPause
local startTime
local endTime
local currentTime
local sayWordAgainTime
local theWord
local correctLetterCount

local theWordAtBottom = {}
local listOfLettersInTheWord = {}
local buttonLettersToFall = {}
local badButtonLettersToFall = {}

local aButton
local bButton
local cButton
local dButton
local eButton
local fButton
local gButton
local hButton
local iButton
local jButton
local kButton
local lButton
local mButton
local nButton
local oButton
local pButton
local qButton 
local rButton
local sButton
local tButton
local uButton
local vButton
local wButton
local xButton
local yButton
local zButton
    
function GameScene:init()

    -- need to zero out the tablefor eachnext word
    print("words at botton length " .. #theWordAtBottom)
    if (#theWordAtBottom > 0) then
        for loopCounter = 1,#theWordAtBottom do
            table.remove(theWordAtBottom, 1)
        end
    end
    if (#listOfLettersInTheWord > 0) then
        for loopCounter = 1,#listOfLettersInTheWord do
            table.remove(listOfLettersInTheWord, 1)
        end
    end
    if (#buttonLettersToFall > 0) then
        for loopCounter = 1,#buttonLettersToFall do
            table.remove(buttonLettersToFall, 1)
        end
    end
    if (#badButtonLettersToFall > 0) then
        for loopCounter = 1,#badButtonLettersToFall do
            table.remove(badButtonLettersToFall, 1)
        end
    end
     
    aButton = Button("Dropbox:letterA", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["a"] = aButton
    bButton = Button("Dropbox:letterB", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["b"] = bButton
    cButton = Button("Dropbox:letterC", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["c"] = cButton
    dButton = Button("Dropbox:letterD", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["d"] = dButton
    eButton = Button("Dropbox:letterE", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["e"] = eButton
    fButton = Button("Dropbox:letterF", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["f"] = fButton
    gButton = Button("Dropbox:letterG", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["g"] = gButton
    hButton = Button("Dropbox:letterH", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["h"] = hButton
    iButton = Button("Dropbox:letterI", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["i"] = iButton
    jButton = Button("Dropbox:letterJ", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["j"] = jButton
    kButton = Button("Dropbox:letterK", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["k"] = kButton
    lButton = Button("Dropbox:letterL", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["l"] = lButton
    mButton = Button("Dropbox:letterM", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["m"] = mButton
    nButton = Button("Dropbox:letterN", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["n"] = nButton
    oButton = Button("Dropbox:letterO", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["o"] = oButton
    pButton = Button("Dropbox:letterP", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["p"] = pButton
    qButton = Button("Dropbox:letterQ", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["q"] = qButton
    rButton = Button("Dropbox:letterR", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["r"] = rButton
    sButton = Button("Dropbox:letterS", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["s"] = sButton
    tButton = Button("Dropbox:letterT", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["t"] = tButton
    uButton = Button("Dropbox:letterU", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["u"] = uButton
    vButton = Button("Dropbox:letterV", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["v"] = vButton
    wButton = Button("Dropbox:letterW", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["w"] = wButton
    xButton = Button("Dropbox:letterW", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["x"] = xButton
    yButton = Button("Dropbox:letterY", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["y"] = yButton
    zButton = Button("Dropbox:letterZ", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["z"] = zButton
    -- you need this letter
    apostropheButton = Button("Dropbox:letterApostrophe", vec2(math.random(50,700), math.random(1000, 1500)))
    listOfLetters["'"] = apostropheButton
    
    --print ("This is the: " .. #listOfLetters)
    local lengthOfWordWallList = #wordWallWordList
    local theWordNumberToPick = math.random(1, lengthOfWordWallList)
    theWord = wordWallWordList[theWordNumberToPick]
    correctLetterCount = #theWord
    -- remove the word from the table
    table.remove(wordWallWordList, theWordNumberToPick)
    print ("The word is " ..theWord)
    
    local letterCounter = 1
    --print("the length of the word is " .. #theWord)
    while (letterCounter <= #theWord) do
        
        listOfLettersInTheWord[letterCounter] = string.sub(theWord, letterCounter, letterCounter)
        
        --print (string.sub(theWord, letterCounter, letterCounter))
        print(listOfLettersInTheWord[letterCounter])      
        --print(listOfLetters[listOfLettersInTheWord[letterCounter]])
        table.insert(buttonLettersToFall, listOfLetters[listOfLettersInTheWord[letterCounter]])
        
        -- insert place holder for word at bottom
        table.insert(theWordAtBottom, Button("Dropbox:letterA", vec2((-10+80*letterCounter), 40)))
        
        letterCounter = letterCounter + 1
    end

    -- add letter of the word to the list that are wrong
    
    local badLetterCounter = 1
    
    -- add as many bad letters as good
    repeat 
        local alphabet ={"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}     
        local selectRandomLetter = math.random(1, 26)
        local randomLetter = alphabet[selectRandomLetter]
        print(randomLetter)
    
        local notInWord = true
    
        for loopCounter = 1, #theWord do
            if (listOfLettersInTheWord[loopCounter] == randomLetter) then
                notInWord = false
                print("letter rejected:" .. randomLetter)
            end
        end
    
        if (notInWord == true) then
            table.insert(badButtonLettersToFall, listOfLetters[randomLetter])
            print(randomLetter)
            badLetterCounter = badLetterCounter + 1
        end      
    until  (badLetterCounter > #theWord)
    
    
    
    --print(listOfLettersInTheWord)
    --sprite("Dropbox:Blue Cancel Button")
    moveToExit = Button("Dropbox:Blue Cancel Button", vec2(WIDTH/2 -300, HEIGHT/2 +425))
    
    startTime = ElapsedTime 
    endTime = startTime +(timeLeftOnClock)  
    print("Start time: " .. startTime)
    print("End time: " .. endTime)
    
    -- now say the word
    speech.rate = 0.35
    speech.language = "en-US"
    speech.say("The word is " .." " .. theWord) 
    speech.say(theWord)
    sayWordAgainTime = startTime + 5
    
end

function GameScene:draw()

    -- draw buttons in table buttonLettersToFall   
    local letterCounter = 1
    while (letterCounter <= #buttonLettersToFall) do
        --print(buttonLettersToFall[letterCounter])
        buttonLettersToFall[letterCounter]:draw()
        
        -- now move the letter down
        local tempLocation = nil
        tempLocation = buttonLettersToFall[letterCounter].buttonLocation
        --print(buttonLettersToFall[letterCounter].buttonLocation.y)
        tempLocation.y = tempLocation.y - 2
                 
        -- move letter back up if they go off the bottom
        if (tempLocation.y < 100) then
            tempLocation.y = math.random(1024,1500)
        end
        buttonLettersToFall[letterCounter].buttonLocation = tempLocation
        
        letterCounter = letterCounter + 1
    end
    
    -- draw  bad buttons in table buttonLettersToFall   
    local badLetterCounter = 1
    while (badLetterCounter <= #badButtonLettersToFall) do
        badButtonLettersToFall[badLetterCounter]:draw()
        
        -- now move the letter down
        local tempLocation = nil
        tempLocation = badButtonLettersToFall[badLetterCounter].buttonLocation
        --print(buttonLettersToFall[letterCounter].buttonLocation.y)
        tempLocation.y = tempLocation.y - 2
                 
        -- move letter back up if they go off the bottom
        if (tempLocation.y < 100) then
            tempLocation.y = math.random(1024,1500)
        end
        badButtonLettersToFall[badLetterCounter].buttonLocation = tempLocation
        
        badLetterCounter = badLetterCounter + 1
    end   
    
    -- word at the bottom
    local letterAtBottomCounter = 1
    while (letterAtBottomCounter <= #theWordAtBottom) do
        theWordAtBottom[letterAtBottomCounter]:draw()
        
        letterAtBottomCounter = letterAtBottomCounter + 1
    end
        
    moveToExit:draw()
       
    currentTime = ElapsedTime
    --print(math.floor(currentTime))
    if(startTime + timeLeftOnClock < ElapsedTime) then
        Scene.Change("timeup")
    end
    
    fill(255, 0, 0, 255)
    fontSize(55)
    font("ArialRoundedMTBold")
    text("Time: " .. math.floor(currentTime), 590, 950)
    
    -- keep saying the word over and over again
    if (sayWordAgainTime < currentTime) then
        sayWordAgainTime = currentTime + 5
        speech.say("The word is " .." " .. theWord) 
        speech.say(theWord)
    end
end

function GameScene:touched(touch)
    moveToExit:touched(touch)

    local letterCounter = 1
    while (letterCounter <= #buttonLettersToFall) do
        buttonLettersToFall[letterCounter]:touched(touch)
        
        if (buttonLettersToFall[letterCounter].selected == true) then
            -- then move it to the side, not to be seen
            local tempLocation = nil
            tempLocation = buttonLettersToFall[letterCounter].buttonLocation
            --print(buttonLettersToFall[letterCounter].buttonLocation.y)
            tempLocation.x = 10000
            buttonLettersToFall[letterCounter].buttonLocation = tempLocation
                      
            -- now place letter at bottom
            theWordAtBottom[letterCounter].currentButtonImage = buttonLettersToFall[letterCounter].buttonImage
            
            correctLetterCount = correctLetterCount - 1
            -- check to see if word is done
            if (correctLetterCount == 0) then
                -- check to see if any words left
                if(#wordWallWordList < 1) then
                    alert("Game done")
                    Scene.Change("xxxxxxx")
                end
                -- you need to go to another scene and the back, or you get errors on the tables
                -- go to a scene that shows the word you just got right for 1/2 second
                print("word correct!!!")
                Scene.Change("correctanswer")
            end
        end
        
        letterCounter = letterCounter + 1
    end
    
    local badLetterCounter = 1
    while (badLetterCounter <= #badButtonLettersToFall) do
        badButtonLettersToFall[badLetterCounter]:touched(touch)
        
        if (badButtonLettersToFall[badLetterCounter].selected == true) then
            -- if a bad button letter is touched, move it back up
            local tempLocation = nil
            tempLocation = badButtonLettersToFall[badLetterCounter].buttonLocation
            tempLocation.x = math.random(50, 700)
            tempLocation.y = math.random(1024,1500)
        
            badButtonLettersToFall[badLetterCounter].buttonLocation = tempLocation        
            badLetterCounter = badLetterCounter + 1
        end
        
        badLetterCounter = badLetterCounter + 1
    end
    
    
    if(moveToExit.selected == true) then
        Scene.Change("prestart")
    end

end
