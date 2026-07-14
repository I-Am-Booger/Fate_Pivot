require("ui/draw_score")
require("ui/draw_level")
require("ui/draw_player_timer")
require("ui/draw_combo")
require("ui/draw_fate_condition")


display_gameplay_info = function()
     if game_state == "play" or game_state == "pause" then 
        draw_the_grid()
        love.graphics.setColor(1, 1, 1)

        draw_score()    
        draw_level()
        draw_player_timer()
        draw_combo()
        draw_fate_condition() 
    
     end     

end 

-- love.graphics.setColor(0, 0, 0, 0.85) 