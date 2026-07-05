require("routing_system/rout")

function love.load()
    -- START SCREEN STUFF, GAMESTATE BETWEEN TITLE SCREEN AND BACKGROUND mUSIC
    set_display()  
    songs()
    -- End o screen stuff etc

    -- end of title stuff
    building_the_grid() --builds the grid on load 
    
    love.graphics.setDefaultFilter("linear", "linear")
    load_blocks()
    load_buttons()
    
    bl_x = 100 / player_image:getWidth()
    bl_y = 100 / player_image:getHeight()
end

function love.update(dt)
    enter_blink(dt)

    if game_state == "play" then 
        update_bad_block_timer(dt)
        update_player_timer(dt)
        -- bad_timer = bad_timer - dt

        -- if bad_timer  <= 0 then 
        --    spawn_bad_block()
        --    -- just testing the fate block
        --    spawn_fate_block()
        --    --
        --    bad_timer = bad_timer_max
        -- end 

        -- player_timer = player_timer - dt
        
        -- if player_timer <= 0 then 
        --    remove_score(10)
        --    destroy_player()
        -- end 
        
    end
    
    if game_state == "play" and score <= game_over_score then 
        game_over()
    end 
    
    update_occupancy_timer()
    update_fate_timer(dt)
    playerPulse = playerPulse + dt
end 

function love.draw()
    
    display_intro_screen()       
    display_gameplay_info()

    if game_state == "game_over" then
        draw_game_over()
    end
end 