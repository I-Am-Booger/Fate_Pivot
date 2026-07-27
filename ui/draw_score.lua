 function draw_score()
   love.graphics.setFont(mid_font)
   love.graphics.print("Score: " .. score, hud_x_position, 170) -- old 150
 end 