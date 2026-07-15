require("intro_screen/how_to_play_and_options/select_options")
require("intro_screen/how_to_play_and_options/handle_options")



function display_options()
    if game_state == "options" then 
        local close = 50

        love.graphics.setColor(1, 1, 1,1)
        love.graphics.setFont(big_font)
        love.graphics.print("Fate & Pivot", close, 100)
        
        love.graphics.setFont(mid_font)

        select_options_selection()
    end 
end
