-- keyboard
function love.keypressed(key)
    input_device = "keyboard"
    
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


    if key == "return" and game_state == "splash_screen" then
        game_state = "title" 
    elseif key == "return" and game_state == "title" then
        game_state = "mode_select"   
    elseif key == "return" and game_state == "mode_select" then
        game_state = "play" spawn_player()  
    elseif key == "return" and game_state == "game_over" then
        love.event.quit("restart") 
    end


    if game_state == "mode_select" then
        if key == "s" then
            title_selection = title_selection + 1
            if title_selection > 3 then
                title_selection = 1
            end
        end

        if key == "w" then
            title_selection = title_selection - 1
            if title_selection < 1 then
                title_selection = 3
            end
        end
    end



    -- pausing the game     
    if key == "enter" and game_state == "play" then
    end -- I don't have the pause option yet 
end 