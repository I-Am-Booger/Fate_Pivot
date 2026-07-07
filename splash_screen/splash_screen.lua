function update_splash_screen(dt)
    if game_state == "splash_screen" then 

        splash_timer = splash_timer - dt

        if splash_timer <= 0 then 
            splash_timer = 0
            game_state = "title"
        end 
    end 
end 

function splash_screen() 
    local alpha = splash_timer / splash_duration
    
    if game_state == "splash_screen" then 
        love.graphics.setColor(1, 1, 1, alpha)
        love.graphics.setFont(big_font)
        love.graphics.print("- Ludere Games -", 800, 325)
        love.graphics.setColor(1, 1, 1, 1)  
    end 
end 


