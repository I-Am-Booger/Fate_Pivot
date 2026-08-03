function game_over()
    game_state = "game_over"
end 

function draw_game_over()
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.setFont(big_font)                                            
    love.graphics.printf("Game Over", 0, 400, design_width, "center")


    love.graphics.setFont(font)
    love.graphics.printf("Press Enter to Restart", 0, 470, design_width, "center")
end 

