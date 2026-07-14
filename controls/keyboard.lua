-- keyboard

function love.keypressed(key)
    input_device = "keyboard"

    -- Sends W or S to the shared menu-selection function
    handle_title_selection(key)

    -- Change game states
    if key == "return" and game_state == "splash_screen" then 
        game_state = "title"

    elseif key == "return" and game_state == "title" then 
        game_state = "mode_select"

    elseif key == "return" and game_state == "mode_select" and title_selection == 1 then
        game_state = "play" spawn_player()

    elseif key == "return" and game_state == "mode_select" and title_selection == 2 then
        game_state = "options"

    elseif key == "return" and game_state == "mode_select" and title_selection == 3 then
        game_state = "how_to_play"

    elseif key == "return" and game_state == "mode_select" and title_selection == 4 then
        game_state = "exit" love.event.quit()

    elseif key == "return" and game_state == "play" then
        game_state = "pause"

    elseif key == "return" and game_state == "pause" then
        game_state = "play"

    elseif key == "escape" and (game_state == "play" or game_state == "pause")
        then game_state = "mode_select"

    elseif key == "return" and game_state == "game_over" then
        love.event.quit("restart")
    end

    -- Gameplay keyboard controls
    if game_state == "play" then
        if key == "w" then move_selector("up") end
        if key == "s" then move_selector("down") end
        if key == "a" then move_selector("left") end
        if key == "d" then move_selector("right") end

        if key == "i" then handle_destroy_button("Y") end
        if key == "j" then handle_destroy_button("X") end
        if key == "k" then handle_destroy_button("A") end
        if key == "l" then handle_destroy_button("B") end

        if key == "space" then
            destroy_player()
        end
    end
end