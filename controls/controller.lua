-- controller


function love.gamepadpressed(joystick, button)
    controller_name(joystick)
    input_device = "controller"

    if button == "dpup" then move_selector("up") end 
    if button == "dpdown" then move_selector("down") end 
    if button == "dpleft" then move_selector("left") end 
    if button == "dpright" then move_selector("right") end 

    if button == "y" then handle_destroy_button("Y", joystick)end 
    if button == "x" then handle_destroy_button("X", joystick)end
    if button == "a" then handle_destroy_button("A", joystick)end
    if button == "b" then handle_destroy_button("B", joystick) end
    if button == "rightshoulder" then destroy_player() end 
    
    -- Controlling the states 
    -- starting the game

    if button == "start" and game_state == "splash_screen" then
        game_state = "title" 
    elseif button == "start" and game_state == "title" then
        game_state = "mode_select"   
    elseif button == "start" and game_state == "mode_select" then
        game_state = "play" spawn_player()  
    elseif button == "start" and game_state == "game_over" then
        love.event.quit("restart") 
    end

   if game_state == "mode_select" then
        if button == "dpdown" then
            title_selection = title_selection + 1
            if title_selection > 3 then
                title_selection = 1
            end
        end

        if button == "dpup" then
            title_selection = title_selection - 1
            if title_selection < 1 then
                title_selection = 3
            end
        end
    end

    -- pausing the game     
    if button == "start" and game_state == "play" then
    end -- I don't have the pause option yet 
end

function love.joystickadded(joystick)
    print("Controller added: " .. joystick:getName())
    load_buttons()
end

function love.joystickremoved(joystick)
    print("Controller removed: " .. joystick:getName())
    load_buttons()
end 

