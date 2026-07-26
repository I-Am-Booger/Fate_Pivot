 function draw_score()
   love.graphics.setFont(font)
   love.graphics.print("Score: " .. score, hud_x_position, 150)
 end 