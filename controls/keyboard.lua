-- keyboard
function love.keypressed(key)
    if key == "w" then move_selector("up") end
    if key == "s" then move_selector("down") end 
    if key == "a" then move_selector("left") end 
    if key == "d" then move_selector("right") end 

    if button == "return" then end -- then pauses game

    if key == "i" then destroy_bad_block("triangle") end    
    if key == "k" then destroy_bad_block("x") end    
    if key == "j" then destroy_bad_block("square") end    
    if key == "l" then destroy_bad_block("circle") end    
    
    if key == "r" then destroy_player() end    

end 