function draw_fate_condition()
    love.graphics.setFont(mid_font)

    if death_fate_active then 
        love.graphics.print(text[current_language].fate .. text[current_language].fate_death, hud_x_position, 540)
        
        elseif devil_fate_active == true then
            love.graphics.print(text[current_language].fate .. text[current_language].fate_devil .. " " .. math.ceil(devil_fate_timer), hud_x_position, 540)

        elseif justice_fate_active then

            if justice_resolving == true then
                love.graphics.print(text[current_language].fate .. text[current_language].fate_justice, hud_x_position, 540)
                
                else
                    love.graphics.print(text[current_language].fate .. text[current_language].fate_justice .. " " .. math.ceil(justice_fate_timer), hud_x_position, 540)
            end
        
        elseif lovers_fate_active == true then
            love.graphics.print(text[current_language].fate .. text[current_language].fate_lovers .. " " .. lovers_fate_uses, hud_x_position, 540)   

        elseif sun_fate_active == true then
            love.graphics.print(text[current_language].fate .. text[current_language].fate_sun .. " " .. math.ceil(sun_fate_timer), hud_x_position, 540)
    end 
end 