require("routing_system/rout")

function love.load()
    -- START SCREEN STUFF, GAMESTATE BETWEEN TITLE SCREEN AND BACKGROUND mUSIC

    love.window.setMode(0, 0, {
        fullscreen = true,
        fullscreentype = "desktop",
        vsync = 1,
        resizable = false
    })

    calculate_display_scale()


    set_display()  
    songs()
    diamond_selector = love.graphics.newImage("art/buttons/player/diamond_r.png")
    -- End o screen stuff etc
    load_audio()
    -- end of title stuff


--testing it here 
    create_stars()





    building_the_grid() --builds the grid on load 
    
    love.graphics.setDefaultFilter("linear", "linear")
    load_blocks()
    load_buttons()
    
    bl_x = 100 / player_image:getWidth()
    bl_y = 100 / player_image:getHeight()
end

function love.update(dt)
    update_splash_screen(dt)
    
    enter_blink(dt)

    if game_state == "play" then 
        update_bad_block_timer(dt)
        update_player_timer(dt)
        update_occupancy_timer()
        update_fate_spawn_timer(dt)
        update_fate_timer(dt)
        player_pulse = player_pulse + dt
        if game_state == "play" and score <= game_over_score then 
            game_over()
        end 
    end

    
    
end 

function love.draw()
    draw_stars()
    splash_screen()
    display_intro_screen()     
    display_mode_select()  
    display_options()
    display_gameplay_info()
    
--- testing 



    if game_state == "game_over" then
        draw_game_over()    
    end
    
    if game_state == "pause" then 
        display_pause() 
    end  
end