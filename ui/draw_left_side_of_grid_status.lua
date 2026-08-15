function draw_left_side_status()
    love.graphics.print("Bonus Time: " .. string.format("%.1f", l1_bonus_timer), 105, 315)

    love.graphics.print("Multiplier: x" .. l1_bonus_multiplier, 105, 365)
end 