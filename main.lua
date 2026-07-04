require("routing_system/rout")

function love.load()
    -- START SCREEN STUFF, GAMESTATE BETWEEN TITLE SCREEN AND BACKGROUND mUSIC
    setDisplay()  

    font = love.graphics.newFont(24)
    bigFont = love.graphics.newFont(48)
    
    songs()
    -- End o screen stuff etc
    bigFont = love.graphics.newFont(48)
    
    --blinking timer 
    blinkTimer = 0

    -- end of title stuff
    building_the_grid() --builds the grid on load 
    
    love.graphics.setDefaultFilter("linear", "linear")
    load_blocks()
    load_buttons()
    
    bl_x = 100 / player_image:getWidth() -- testing
    bl_y = 100 / player_image:getHeight() -- testing
end

function love.update(dt)
    enter_blink(dt)

    if gameState == "play" then 

        bad_timer = bad_timer - dt

        if bad_timer  <= 0 then 
           spawn_bad_block()
           -- just testing the fate block
           spawn_fate_block()
           --
           bad_timer = bad_timer_max
        end 

        player_timer = player_timer - dt
        
        if player_timer <= 0 then 
           remove_score(10)
           destroy_player()
        end 
        --placeholder for blocks and buttons
        
    end
    
    if gameState == "play" and score <= game_over_score then 
        game_over()
    end 
    
    update_occupancy_timer()
    update_fate_timer(dt)
    playerPulse = playerPulse + dt
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
        draw_the_grid()
        
    
        -- Right UI panel
    love.graphics.setColor(1, 1, 1)

    love.graphics.print("Score: " .. score, 1500, 150)
    love.graphics.print("Level: " .. level, 1500, 220)
    love.graphics.print("Timer:", 1500, 300)

    love.graphics.setFont(bigFont)
    love.graphics.print(string.format("%.2f", player_timer), 1500, 340)

    love.graphics.setFont(font)
    love.graphics.print("Combo: " .. combo_made, 1500, 450)
    love.graphics.print("Fate: ready", 1500, 520)




        -- -- draw_score()
        -- -- draw_timer()
        -- display_info()
    end    

    if gameState == "game_over" then
        draw_game_over()
    end
end 