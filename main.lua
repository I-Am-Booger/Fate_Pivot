require("routing_system/rout")

require("save/save_data")
require("save/save_manager")


function love.load()
    load_game_data()

    -- HOW TO PLAY TEXT
    how_to_play_text_1 = love.filesystem.read("states/how_to_play_text/english_1.txt")

    how_to_play_text_2 = love.filesystem.read("states/how_to_play_text/english_2.txt")

    how_to_play_text_3 = love.filesystem.read("states/how_to_play_text/english_3.txt")


    -- WINDOW AND DISPLAY
    love.window.setMode(1920, 1080, {fullscreen = true, fullscreentype = "desktop", vsync = 1, resizable = false })

    love.window.setTitle("Fate & Pivot")

    calculate_display_scale()
    update_fullscreen_text()


    -- MUSIC AND SOUND
    songs()
    load_audio()


    -- TITLE AND MENU ART
    diamond_selector = love.graphics.newImage("art/buttons/player/diamond_r.png")


    -- BACKGROUND
    background_engine_load()


    -- GRID
    building_the_grid()


    -- BLOCK AND BUTTON ART
    love.graphics.setDefaultFilter("linear", "linear")

    load_blocks()
    load_buttons()


    -- IMAGE SCALE
    bl_x = 100 / player_image:getWidth()
    bl_y = 100 / player_image:getHeight()
end

function love.update(dt)

    -- INTRO SCREEN
    update_splash_screen(dt)
    enter_blink(dt)


    -- GAMEPLAY
    if game_state == "play" then
        update_wrong_button_flash(dt)
        l1_blocks_timer(dt)
        update_bad_block_timer(dt)
        update_player_timer(dt)
        update_occupancy_timer()
        update_fate_spawn_timer(dt)
        update_fate_timer(dt)
        update_destroy_pulse(dt)
        time(dt)
        record_high_score()

        -- player_pulse = player_pulse + dt


        if score <= game_over_score then
            game_over()
        end

    end


end


function love.draw()    

    background_engine()

    love.graphics.push()
    love.graphics.translate(game_offset_x, game_offset_y)
    love.graphics.scale(game_scale, game_scale) 

    if game_state == "splash_screen" then
        splash_screen()

    elseif game_state == "title" then
        display_intro_screen()

    elseif game_state == "mode_select" then
        display_mode_select()

    elseif game_state == "statistics" then 
        display_statistics()

    elseif game_state == "options" then
        display_options()

    elseif game_state == "how_to_play" then
        how_to_play()

    elseif game_state == "play" then
        display_gameplay_info()
        draw_destroy_pulse()

    elseif game_state == "pause" then
        display_gameplay_info()
        draw_destroy_pulse()

    elseif game_state == "game_over" then
        draw_game_over()
    end

    love.graphics.pop()

    if game_state == "pause" then
        display_pause()
    end
end

function love.quit()
    save_game_data()
end