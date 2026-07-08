function display_intro_screen() 
    if game_state == "title" then 
        love.graphics.setFont(big_font)                                            
        love.graphics.print("Fate & Pivot", 800, 325 )
        
        if show_enter then 
            if input_device == "keyboard" then     
                love.graphics.print("Press ENTER", 800, 375)
            else 
                love.graphics.print("Press START", 800, 375)
            end
        end
    
    love.graphics.setFont(font)
    love.graphics.print("v" .. game_version, 50, 1040)

    end 
end 

function display_mode_select()
    if game_state == "mode_select" then
    local d_p_c = 32 -- diamond position close
    local h = 196 
    local close = 50 -- selector close
    local far = 90


        love.graphics.setFont(big_font)                                            
        love.graphics.print("Fate & Pivot", close,  100 )

        love.graphics.setFont(mid_font)
        
        if title_selection == 1 then
            love.graphics.draw(diamond_selector, d_p_c, 180.5, 0, 0.05, 0.05)
            love.graphics.print("Start Game", far, 185)
            love.graphics.print("Options", close, 265)

            elseif title_selection == 2 then
                love.graphics.print("Start Game", close, 185)
                love.graphics.draw(diamond_selector, d_p_c, 261.5, 0, 0.05, 0.05)
                love.graphics.print("Options", far, 265)
        end
    end

    love.graphics.setFont(font)
    love.graphics.print("v" .. game_version, 50, 1040)
end 