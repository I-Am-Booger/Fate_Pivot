-- controller

function love.gamepadpressed(joystick, input)
    controller_name(joystick)
    input_device = "controller"

    -- Let the shared menu handler process D-pad input
    handle_title_selection(input)
    handle_option_selection(input)

    -- Starting and changing states
    if input == "start" and game_state == "splash_screen" then game_state = "title"

        elseif input == "start" and game_state == "title" then game_state = "mode_select"

        elseif input == "start" and game_state == "mode_select"
            and title_selection == 1 then game_state = "play" spawn_player()

        elseif input == "start" and game_state == "mode_select"
            and title_selection == 2 then game_state = "options"

        elseif input == "back" and game_state == "options"
            and options_selection == 1 then game_state = "mode_select"

        elseif input == "start" and game_state == "mode_select" 
            and title_selection == 3 then game_state = "how_to_play"

         -- I put game_state = "exit" so that a quick glace I could see whare I was in the code        
        elseif input == "start" and game_state == "mode_select"
            and title_selection == 4 then game_state = "exit" love.event.quit() 
                
        elseif input == "start" and game_state == "play" then game_state = "pause"

        elseif input == "start" and game_state == "pause" then game_state = "play"

        elseif input == "back" and (game_state == "play" or game_state == "pause")
            then game_state = "mode_select"
            
        elseif input == "start" and game_state == "game_over" then
            love.event.quit("restart") 
    end

    -- Gameplay controls
    if game_state == "play" then
        if input == "dpup" then move_selector("up") end
        if input == "dpdown" then move_selector("down") end
        if input == "dpleft" then move_selector("left") end
        if input == "dpright" then move_selector("right") end

        if input == "y" then handle_destroy_button("Y", joystick) end
        if input == "x" then handle_destroy_button("X", joystick) end
        if input == "a" then handle_destroy_button("A", joystick) end
        if input == "b" then handle_destroy_button("B", joystick) end

        if input == "rightshoulder" then destroy_player() end
    end
end

function love.joystickadded(joystick)
    print("Controller added: " .. joystick:getName())
    load_buttons()
end

function love.joystickremoved(joystick)
    print("Controller removed: " .. joystick:getName())
    load_buttons()
end