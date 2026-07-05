function destroy_bad_block(buttonPressed)
    if selectedCell == nil then return end 
    if selectedCell.owner ~= "bad" then return end 

    if selectedCell.button ~= buttonPressed then
        spawn_bad_block()
        remove_score(20)
        player_timer = player_timer - 0.10
        
        return
    end
    
    local destroyed_color = selectedCell.color
    
    selectedCell.occupied = false
    selectedCell.owner = nil
    selectedCell.color = nil
    selectedCell.button = nil

    button_click()
    
    local joysticks = love.joystick.getJoysticks()    
    
    if joysticks[1] then
        joysticks[1]:setVibration(0.22, 0.22, 0.04)
    end
    
    selectedCell = currentPlayerCell
    
    add_score(10)
    combo_counter(destroyed_color)   
    block_destroyed = block_destroyed + 1

    level_up()
end 