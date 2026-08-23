function draw_left_side_status()
    love.graphics.print("Bonus Time: " .. string.format("%.1f", l1_bonus_timer), 105, 315)

    local displayed_multiplier = l1_bonus_multiplier

    if devil_fate_active == true then
        displayed_multiplier = displayed_multiplier * 2
    end

    love.graphics.print("Multiplier: x" .. displayed_multiplier, 105, 365)
end 