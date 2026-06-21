-- keyboard
function love.keypressed(key)
    if key == "w" then move_selector("up") end
    if key == "s" then move_selector("down") end 
    if key == "a" then move_selector("left") end 
    if key == "d" then move_selector("right") end 

    if key == "return" then end -- then pauses game

    if key == "y" then destroy_bad_block("Y") end    
    if key == "x" then destroy_bad_block("X") end    
    if key == "z" then destroy_bad_block("A") end    
    if key == "b" then destroy_bad_block("B") end    
    
    if key == "r" then destroy_player() end    

end 