function draw_fate_condition()
    love.graphics.setFont(mid_font)

    if death_fate_active then 
        love.graphics.print("Fate: DEATH", hud_x_position, 540)
        
        elseif devil_fate_active == true then
            love.graphics.print("Fate: DEVIL " .. math.ceil(devil_fate_timer), hud_x_position, 540)

        elseif justice_fate_active then

            if justice_resolving == true then
                love.graphics.print("Fate: JUSTICE", hud_x_position, 540)
                
                else
                    love.graphics.print("Fate: JUSTICE " .. math.ceil(justice_fate_timer), hud_x_position, 540)
            end
        
        elseif lovers_fate_active == true then
            love.graphics.print("Fate: LOVERS " .. lovers_fate_uses, hud_x_position, 540)   

        elseif sun_fate_active == true then
            love.graphics.print("Fate: SUN " .. math.ceil(sun_fate_timer), hud_x_position, 540)
    end 
end 