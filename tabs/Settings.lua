Settings = class()

-- global to his file
local moveToMainMenuButton
local playMusicButton
local pauseMusicButton

function Settings:init()
    -- you can accept and set parameters here 
    moveToMainMenuButton = Button("Dropbox:Teal Back Circle Button", vec2(WIDTH/2-300, HEIGHT/2+420))
    playMusicButton = Button("Dropbox:Teal Move Scene Forward Button", vec2(WIDTH/2+150, HEIGHT/2-50))
    pauseMusicButton = Button ("Dropbox:Teal Pause Button", vec2(WIDTH/2-150, HEIGHT/2-50))
    fontSize(40)
    --sprite("Dropbox:Green Pause Button")
end

function Settings:draw()
    -- Codea does not automatically call this method
    background(238, 43, 159, 255)
    fill(255, 255, 255, 255)
    font("Palatino-Bold")
    fontSize(75)
    moveToMainMenuButton:draw()
    playMusicButton:draw()
    pauseMusicButton:draw()
    text("Settings", WIDTH/2, HEIGHT/2+300)
    fontSize(50)
    text("Background Music Volume", WIDTH/2, HEIGHT/2+100)
    fontSize(45)
    text("Play", WIDTH/2+150, HEIGHT/2-180)
    text("Pause", WIDTH/2-150, HEIGHT/2-180)
    
end

function Settings:touched(touch)
    -- Codea does not automatically call this method
    moveToMainMenuButton:touched(touch)
    playMusicButton:touched(touch)
    pauseMusicButton:touched(touch)
    
    if(moveToMainMenuButton.selected == true) then
        Scene.Change("mainmenu")
    end
    if(pauseMusicButton.selected == true) then
         music("Game Music One:Pulsar", true, 0.00)
    end
    if(playMusicButton.selected == true) then
        music("Game Music One:Pulsar", true, 0.75)
    end
end
