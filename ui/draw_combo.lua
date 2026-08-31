function draw_combo()
    love.graphics.setFont(mid_font)
    love.graphics.print(text[current_language].combo .. combo_made, hud_x_position, 445)
end 