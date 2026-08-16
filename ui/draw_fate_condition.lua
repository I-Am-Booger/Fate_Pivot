function draw_fate_condition()
    love.graphics.setFont(mid_font)

    if death_fate_active then 
        love.graphics.print("Fate: DEATH", hud_x_position, 540)
        
        elseif justice_fate_active then   
            love.graphics.print("Fate: JUSTICE " .. math.ceil(justice_fate_timer), hud_x_position, 540)       
        else love.graphics.print("Fate: ready", hud_x_position, 540) 
    end 
end 