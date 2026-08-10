function update_wrong_button_flash(dt)
    if wrong_button_pressed ~= true then return end  

    wrong_button_timer = wrong_button_timer - dt

    if wrong_button_timer <= 0 then 
        wrong_button_pressed = false
        return 
    end 
end 