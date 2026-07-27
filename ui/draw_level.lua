function draw_level()
    love.graphics.setFont(mid_font)
    love.graphics.print("Level: " .. level, hud_x_position, 240) 
    love.graphics.print("Nxt: "  .. (blocks_to_next_level - blocks_destroyed), hud_x_position + 160, 240) -- old 120
end 