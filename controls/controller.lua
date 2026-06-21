-- controller
-- the controller has interesting button mappings and would be hard to remember

function love.gamepadpressed(joystick, button)
    if button == "dpup" then move_selector("up") end 
    if button == "dpdown" then move_selector("down") end 
    if button == "dpleft" then move_selector("left") end 
    if button == "dpright" then move_selector("right") end 

    if button == "start" then end -- pauses the game or starts the game
    
    if button == "y" then destroy_bad_block("Y") end -- this is the triangle button
    if button == "x" then destroy_bad_block("X") end -- this is the cross button
    if button == "a" then destroy_bad_block("A") end -- this is the square button
    if button == "b" then destroy_bad_block("B") end -- this is the circle button

    if button == "rightshoulder" then destroy_player() end 
end



