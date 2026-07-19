-- keyboard

function love.keypressed(input)
    input_device = "keyboard"

    -- Sends W or S to the shared menu-selection function
    handle_title_selection(input)
    handle_option_selection(input)
    
    
    -- Change game states
    if input == "return" and game_state == "splash_screen" then 
        game_state = "title" return

    elseif input == "return" and game_state == "title" then 
        game_state = "mode_select" return

    elseif input == "return" and game_state == "mode_select" and title_selection == 1 then
        reset_game()
        game_state = "play" 
        spawn_player() return

    elseif input == "return" and game_state == "mode_select" and title_selection == 2 then
        game_state = "options" return

    elseif input == "return" and game_state == "mode_select" and title_selection == 3 then
        game_state = "how_to_play" return

    elseif input == "return" and game_state == "mode_select" and title_selection == 4 then
        game_state = "exit" love.event.quit()

    elseif input == "escape" and game_state == "options" then 
        game_state = "mode_select" return


    elseif (input == "return") and game_state == "options" then
        activate_options() return
    
    elseif (input == "a") and game_state == "options" and options_selection == 2 then
        change_resolution(-1) return

    elseif (input == "d") and game_state == "options" and options_selection == 2 then
        change_resolution(1) return  
              
    elseif(input == "a") and game_state == "options" and options_selection == 3 then 
        change_music_volume(-1) return 

    elseif(input == "d") and game_state == "options" and options_selection == 3 then 
        change_music_volume(1) return

    elseif(input == "a") and game_state == "options" and options_selection == 4 then 
        change_sound_volume(-1) return

    elseif(input == "d") and game_state == "options" and options_selection == 4 then 
        change_sound_volume(1) return     
    
    elseif input == "return" and game_state == "play" then
        game_state = "pause" return

    elseif input == "return" and game_state == "pause" then
        game_state = "play" return

    elseif input == "escape" and (game_state == "play" or game_state == "pause")
        then game_state = "mode_select" return

    elseif input == "return" and game_state == "game_over" then
        love.event.quit("restart")
    end

    -- Gameplay keyboard controls
    if game_state == "play" then
        if input == "w" then move_selector("up") end
        if input == "s" then move_selector("down") end
        if input == "a" then move_selector("left") end
        if input == "d" then move_selector("right") end

        if input == "i" then handle_destroy_button("Y") end
        if input == "j" then handle_destroy_button("X") end
        if input == "k" then handle_destroy_button("A") end
        if input == "l" then handle_destroy_button("B") end

        if input == "space" then
            destroy_player()
        end
    end
end