-- controller

function love.gamepadpressed(joystick, button)
    controller_name(joystick)
    input_device = "controller"

    -- Let the shared menu handler process D-pad input
    handle_title_selection(button)

    -- Starting and changing states
    if button == "start" and game_state == "splash_screen" then game_state = "title"

        elseif button == "start" and game_state == "title" then game_state = "mode_select"

        elseif button == "start" and game_state == "mode_select"
            and title_selection == 1 then game_state = "play" spawn_player()

        elseif button == "start" and game_state == "mode_select"
            and title_selection == 2 then game_state = "options"

        elseif button == "start" and game_state == "options"
            and option_selection == 1 then 











        elseif button == "start" and game_state == "mode_select" 
            and title_selection == 3 then game_state = "how_to_play"

         -- I put game_state = "exit" so that a quick glace I could see whare I was in the code        
        elseif button == "start" and game_state == "mode_select"
            and title_selection == 4 then game_state = "exit" love.event.quit() 
                
        elseif button == "start" and game_state == "play" then game_state = "pause"

        elseif button == "start" and game_state == "pause" then game_state = "play"

        elseif button == "back" and (game_state == "play" or game_state == "pause")
            then game_state = "mode_select"
            
        elseif button == "start" and game_state == "game_over" then
            love.event.quit("restart") 
    end

    -- Gameplay controls
    if game_state == "play" then
        if button == "dpup" then move_selector("up") end
        if button == "dpdown" then move_selector("down") end
        if button == "dpleft" then move_selector("left") end
        if button == "dpright" then move_selector("right") end

        if button == "y" then handle_destroy_button("Y", joystick) end
        if button == "x" then handle_destroy_button("X", joystick) end
        if button == "a" then handle_destroy_button("A", joystick) end
        if button == "b" then handle_destroy_button("B", joystick) end

        if button == "rightshoulder" then destroy_player() end
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