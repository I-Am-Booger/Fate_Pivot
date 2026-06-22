-- controller
function love.gamepadpressed(joystick, button)
    inputDevice = "controller"

    if button == "dpup" then move_selector("up") end 
    if button == "dpdown" then move_selector("down") end 
    if button == "dpleft" then move_selector("left") end 
    if button == "dpright" then move_selector("right") end 

    
    if button == "y" then destroy_bad_block("Y") end
    if button == "x" then destroy_bad_block("X") end
    if button == "a" then destroy_bad_block("A") end
    if button == "b" then destroy_bad_block("B") end
    if button == "rightshoulder" then destroy_player() end 
    
    -- Controlling the states 
    -- starting the game
    if button == "start" and gameState == "title" then
        gameState = "play" spawn_player() end 
    
    -- restarting the game 
    if button == "start" and gameState == "gameOver" then
        love.event.quit("restart") end

    -- pausing the game     
    if button == "start" and gameState == "play" then
    end -- I don't have the pause option yet 
end



