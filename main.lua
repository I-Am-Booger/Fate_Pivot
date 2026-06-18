require("introscreen/globals")
require("introscreen/title_screen")
require("grid/grid_draw")
require("grid/grid_table")
require("block_Spawning/spawning_blocks")
require("block_Spawning/spawning_player")
require("block_spawning/spawning_bad_blocks")

function love.load()
    --[[ START SCREEN STUFF, SETTING THE TITLE, RESOLUTION, 
         GAMESTATE BETWEEN TITLE SCREEN AND BACKGROUND mUSIC ]]
    love.window.setMode(1920, 1080)
    love.window.setTitle("Fate & Pivot")
    
    -- title stuff 
    gameState = "title"
    showEnter = true

    --start page song 
    backgroundMusic = love.audio.newSource("music/IntroSong.mp3", "stream")
    --looping the song
    backgroundMusic:setLooping(true)
    love.audio.play(backgroundMusic)
    -- End o screen stuff etc

---------------------------------------------------------------------------------
    bigFont = love.graphics.newFont(48)

    score = 0 
    level = 0 
    
    timer = 3 -- when gameplay it will start at 2 testing 3
    spawnTime = 3

--blinking timer 
    blinkTimer = 0
-- end of blinking timer 


-- emd of title stuff
building_the_grid() --builds the grid on load 

end


function love.update(dt)
    enter_blink(dt)

    if gameState == "play" then 
        timer = timer - dt
        if timer <= 0 then 
            spawn_bad_block()
            timer = spawnTime
        end
    end 
end 

function love.draw()
    
    if gameState == "title" then 
        love.graphics.setFont(bigFont)
        love.graphics.print("Fate & Pivot", 800, 325 )
        
        if showEnter == true then 
            love.graphics.print("Press ENTER", 800, 375)
        end
    end 
    
    if gameState == "play" then 
        draw_block()
        grid()
                                
        love.graphics.line(1500, 1500, 1500, 0  )     
        love.graphics.setFont(bigFont)
        
        love.graphics.print("Lvl: " .. level, 1600, 100)
        love.graphics.print("Timer: " .. string.format("%.2f", timer), 1600, 180)
        love.graphics.print("Scores: " .. score, 1600, 260)
    end    
    
end 