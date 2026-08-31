function draw_left_side_status()

    love.graphics.print(text[current_language].bonus_time, 105, 300)

    love.graphics.print(string.format("%.1f", l1_bonus_timer), 105, 345) -- +15

    local displayed_multiplier = l1_bonus_multiplier

    if devil_fate_active == true then
        displayed_multiplier = displayed_multiplier * 2
    end

    love.graphics.print(text[current_language].multiplier, 105, 405)

    love.graphics.print("x" .. displayed_multiplier, 105, 445)
end