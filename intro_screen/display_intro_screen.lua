function display_intro_screen() 
    if game_state == "title" then 
        love.graphics.setFont(bigFont)                                            
        love.graphics.print("Fate & Pivot", 800, 325 )
        
        if showEnter then 
            if inputDevice == "keyboard" then     
                love.graphics.print("Press ENTER", 800, 375)
            else 
                love.graphics.print("Press START", 800, 375)
            end
        end
    end 
end 