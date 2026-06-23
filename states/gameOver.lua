function game_over()
    gameState = "gameOver"
end 

function draw_game_over()
    love.graphics.setColor(1,1,1)
    love.graphics.setFont(bigFont)                                            
    love.graphics.printf("Game Over", 0, 400, love.graphics.getWidth(), "center")
    love.graphics.printf("Press Enter to Restart", 0, 470, love.graphics.getWidth(), "center")
end 