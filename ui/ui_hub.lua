require("ui/draw_score")
require("ui/draw_level")
require("ui/draw_player_timer")
require("ui/draw_combo")
require("ui/draw_fate_condition")


function display_info()
     if game_state == "play" then 
        draw_the_grid()
        love.graphics.setColor(1, 1, 1)

        draw_score()    
        draw_level()
        draw_player_timer()
        draw_combo()
        draw_fate_condition() 
    end
end 
