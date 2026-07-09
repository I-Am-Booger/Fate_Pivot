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
            love.graphics.setColor(1, 1, 1, 1)
            love.graphics.draw(diamond_selector, d_p_c, 170.5, 0, 0.05, 0.05)
            love.graphics.print("Start Game", far, 175)

            love.graphics.setColor(1, 1, 1, 0.35)
            love.graphics.print("Options", close, 240)

            love.graphics.print("How to play", close, 305)

            elseif title_selection == 2 then
                love.graphics.setColor(1, 1, 1, 0.35) 
                love.graphics.print("Start Game", close, 175)
                
                love.graphics.setColor(1, 1, 1, 1)
                love.graphics.draw(diamond_selector, d_p_c, 236.5, 0, 0.05, 0.05)
                love.graphics.print("Options", far, 240)
                
                love.graphics.setColor(1, 1, 1, 0.35) 
                love.graphics.print("How to play", close, 305)
             

            elseif title_selection == 3 then 
                love.graphics.setColor(1, 1, 1, 0.35)
                love.graphics.print("Start Game", close, 175)

                love.graphics.print("Options", close, 240)

                love.graphics.setColor(1, 1, 1, 1)
                love.graphics.draw(diamond_selector, d_p_c, 301.5, 0, 0.05, 0.05)
                love.graphics.print("How to play", far, 305)
            
            
            
        end
     

        love.graphics.setColor(1, 1, 1, 1)

        love.graphics.setFont(font)
        love.graphics.print("v" .. game_version, 50, 1040)
    end 
end 