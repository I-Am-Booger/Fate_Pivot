function draw_level()
    love.graphics.setFont(mid_font)
    love.graphics.print(text[current_language].level .. level, hud_x_position, 240) 
    love.graphics.print(text[current_language].next_level .. (blocks_to_next_level - blocks_destroyed), hud_x_position + 160, 240)
end 