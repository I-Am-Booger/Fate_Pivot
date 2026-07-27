function draw_player_timer()
    love.graphics.setFont(mid_font)
    love.graphics.print("Timer:", hud_x_position, 320)
    love.graphics.setFont(big_font)
    love.graphics.print(string.format("%.2f", player_timer), hud_x_position, 360)
end 