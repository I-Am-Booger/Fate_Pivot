function destroy_bad_block(buttonPressed)
    if selected_cell == nil then return end 
    if selected_cell.owner ~= "bad" then return end 

    if selected_cell.button ~= buttonPressed then
        spawn_bad_block()
        remove_score(20)
        player_timer = player_timer - 0.10
        
        return
    end
    
    local destroyed_color = selected_cell.color
    
    selected_cell.occupied = false
    selected_cell.owner = nil
    selected_cell.color = nil
    selected_cell.button = nil

    button_click()
    
    local joysticks = love.joystick.getJoysticks()    
    
    if joysticks[1] then
        joysticks[1]:setVibration(0.22, 0.22, 0.04)
    end
    
    selected_cell = current_player_cell
    
    add_score(10)
    combo_counter(destroyed_color)   
    block_destroyed = block_destroyed + 1

    level_up()
end 