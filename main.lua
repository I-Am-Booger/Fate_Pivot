require("routing_system/rout")

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
    
end 

function love.draw()
    
    love.graphics.draw(player_image, 10, 10, 0, bl_x, bl_y) --testing
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
        -- draw_score()
        -- draw_timer()
        draw_level()
    end    

    if gameState == "game_over" then
        draw_game_over()
    end
end 