-- keyboard
function love.keypressed(key)
    inputDevice = "keyboard"
    
    if key == "w" then move_selector("up") end
    if key == "s" then move_selector("down") end 
    if key == "a" then move_selector("left") end 
    if key == "d" then move_selector("right") end 


    if key == "y" then handle_destroy_button("Y") end    
    if key == "x" then handle_destroy_button("X") end    
    if key == "z" then handle_destroy_button("A") end    
    if key == "b" then handle_destroy_button("B") end    
    if key == "r" then destroy_player() end    
    
    -- controlling the states 
    -- starting the game
    if key == "return" and gameState == "title" then
        gameState = "play" spawn_player() end  
    
    -- restarting the game     
    if key == "return" and gameState == "gameOver" then 
        love.event.quit("restart") end 

    -- pausing the game     
    if key == "start" and gameState == "play" then
    end -- I don't have the pause option yet 
end 