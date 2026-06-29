-- controller


function love.gamepadpressed(joystick, button)
    controller_name(joystick)
    inputDevice = "controller"

    if button == "dpup" then move_selector("up") end 
    if button == "dpdown" then move_selector("down") end 
    if button == "dpleft" then move_selector("left") end 
    if button == "dpright" then move_selector("right") end 

    if button == "y" then handle_destroy_button("Y") end
    if button == "x" then handle_destroy_button("X") end
    if button == "a" then handle_destroy_button("A") end
    if button == "b" then handle_destroy_button("B") end
    if button == "rightshoulder" then destroy_player() end 
    
    -- Controlling the states 
    -- starting the game
    if button == "start" and gameState == "title" then
        gameState = "play" spawn_player() end 
    
    -- restarting the game 
    if button == "start" and gameState == "game_over" then
        love.event.quit("restart") end

    -- pausing the game     
    if button == "start" and gameState == "play" then
    end -- I don't have the pause option yet 
end



