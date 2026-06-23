require("routingSystem/rout")

function love.load()
    -- START SCREEN STUFF, GAMESTATE BETWEEN TITLE SCREEN AND BACKGROUND mUSIC
    setDisplay()  
    songs()
    -- End o screen stuff etc
    bigFont = love.graphics.newFont(48)
    
    --blinking timer 
    blinkTimer = 0

    -- emd of title stuff
    building_the_grid() --builds the grid on load 
end

function love.update(dt)
    enter_blink(dt)

    if gameState == "play" then 

        bad_timer = bad_timer - dt

        if bad_timer  <- 0 then 
           spawn_bad_block()
           bad_timer = bad_timer_max
        end 

        player_timer = player_timer - dt
        
        if player_timer <= 0 then 
           remove_score(1)
           destroy_player()
        end 
    end

    if score == -5 then 
        game_over()
    end 
end 



function love.draw()
    
    if gameState == "title" then 
        love.graphics.setFont(bigFont)                                            
        love.graphics.print("Fate & Pivot", 800, 325 )
        
        if showEnter then 
            if inputDevice == "keyboard" then     
                love.graphics.print("Press ENTER", 800, 375)
            else 
                love.graphics.print("Press START", 800, 375)
            end
        end
    end 
    
    if gameState == "play" then 
        draw_block()
        grid()
        
        love.graphics.line(1500, 1500, 1500, 0  )     
        love.graphics.setFont(bigFont)
        
        love.graphics.print("Lvl: " .. level, 1600, 100)
        love.graphics.print("Timer: " .. string.format("%.2f", player_timer), 1600, 180)
        love.graphics.print("Scores: " .. score, 1600, 260)
        draw_selector() -- this will probably have to more 
    end    

    if gameState == "gameOver" then
        draw_game_over()
    end
end 
-- love.graphics.setFont(bigFont)                                            
-- love.graphics.printf("Game Over", 0, 400, love.graphics.getWidth(), "center")
-- love.graphics.printf("Press Enter to Restart", 0, 470, love.graphics.getWidth(), "center")