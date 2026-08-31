 function draw_score()
   love.graphics.setFont(mid_font)
   love.graphics.print(text[current_language].score .. score, hud_x_position, 170) -- old 150
 end 