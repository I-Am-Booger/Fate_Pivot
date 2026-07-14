function draw_level()
    love.graphics.setFont(font)
    love.graphics.print("Level: " .. level, 1500, 220)
    love.graphics.print("Nxt: "  .. (blocks_to_next_level - blocks_destroyed), 1620, 220) 
end 