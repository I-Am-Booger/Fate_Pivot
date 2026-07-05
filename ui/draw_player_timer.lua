function draw_player_timer()
    love.graphics.print("Timer:", 1500, 300)
    love.graphics.setFont(bigFont)
    love.graphics.print(string.format("%.2f", player_timer), 1500, 340)
end 