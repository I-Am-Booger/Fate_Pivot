-- keyboard
function love.keypressed(key)
    if key == "w" then move_selector("up") end
    if key == "s" then move_selector("down") end 
    if key == "a" then move_selector("left") end 
    if key == "d" then move_selector("right") end 

    if key == "r" then destroy_player() end    
end 