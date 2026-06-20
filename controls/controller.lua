-- controller

function love.gamepadpressed(joystick, button)
    if button == "dpup" then move_selector("up") end 
    if button == "dpdown" then move_selector("down") end 
    if button == "dpleft" then move_selector("left") end 
    if button == "dpright" then move_selector("right") end 

    if button == "rightshoulder" then destroy_player() end 
end



