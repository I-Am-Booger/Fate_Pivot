function draw_player_timer()
    love.graphics.setFont(font)
    love.graphics.print("Timer:", hud_x_position, 300)
    love.graphics.setFont(big_font)
    love.graphics.print(string.format("%.2f", player_timer), hud_x_position, 340)
end 