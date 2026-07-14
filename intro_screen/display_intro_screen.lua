require("intro_screen/how_to_play_and_options/options") 
require("intro_screen/how_to_play_and_options/how_to_play") 
require("intro_screen/select_title_selection")

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
        local close = 50 -- selector close
        local far = 90
        
        love.graphics.setFont(big_font)                                            
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.print("Fate & Pivot", close,  100 )

        love.graphics.setFont(mid_font)
        
        select_title_selection()

        love.graphics.setColor(1, 1, 1, 1)

        love.graphics.setFont(font)
        love.graphics.print("v" .. game_version, 50, 1040)
    end 
end 