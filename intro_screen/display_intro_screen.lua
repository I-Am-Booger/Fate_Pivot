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
    love.graphics.print("v" .. game_version, 20, 1040)

    end 
end 