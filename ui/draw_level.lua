function draw_level()
    love.graphics.setFont(font)
    love.graphics.print("Level: " .. level, hud_x_position, 220)
    love.graphics.print("Nxt: "  .. (blocks_to_next_level - blocks_destroyed), hud_x_position + 120, 220) 
end 