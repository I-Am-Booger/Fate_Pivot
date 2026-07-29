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

    if game_state == "splash_screen" then

        local alpha = splash_timer / splash_duration

        love.graphics.setColor(1, 1, 1, alpha)
        love.graphics.setFont(big_font)

        local splash_text = "- Ludere Games -"
        local text_width = big_font:getWidth(splash_text)

        love.graphics.print(splash_text, (1920 - text_width) / 2, 325)
        love.graphics.setColor(1, 1, 1, 1)

    end

end


