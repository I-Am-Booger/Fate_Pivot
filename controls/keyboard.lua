-- keyboard
function love.keypressed(key)
    input_device = "keyboard"
    
    if key == "w" then move_selector("up") end
    if key == "s" then move_selector("down") end 
    if key == "a" then move_selector("left") end 
    if key == "d" then move_selector("right") end 


    if key == "i" then handle_destroy_button("Y") end    
    if key == "j" then handle_destroy_button("X") end    
    if key == "k" then handle_destroy_button("A") end    
    if key == "l" then handle_destroy_button("B") end    
    if key == "space" then destroy_player() end    
    
    -- controlling the states 
    -- starting the game


    if key == "return" and game_state == "splash_screen" then
        game_state = "title" 

        elseif key == "return" and game_state == "title" then
            game_state = "mode_select"   
 
        -- mode select screen and the options in inside    
        elseif key == "return" and game_state == "mode_select" 
            and title_selection == 1 then game_state = "play" spawn_player()  
            
        elseif key == "return" and game_state == "mode_select"
            and title_selection == 2 then game_state = "options"


        elseif key == "return" and game_state == "mode_select"
            and title_selection == 3 then game_state = "how_to_play"
        -----------------------------------------------------------------


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