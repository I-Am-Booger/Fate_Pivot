function destroy_bad_block(buttonPressed)
    if selected_cell == nil then return end
    if selected_cell.owner ~= "bad" then return end

    if selected_cell.button ~= buttonPressed then
        spawn_bad_block()
        remove_score(-20)
        player_timer = player_timer - 0.10
        return
    end

    local destroyed_color = selected_cell.color

    if destroyed_color == "red" then
    destroy_pulse_color = {1, 0, 0}

    elseif destroyed_color == "blue" then
        destroy_pulse_color = {0, 0.45, 1}

    elseif destroyed_color == "green" then
        destroy_pulse_color = {0, 1, 0.25}

    elseif destroyed_color == "yellow" then
        destroy_pulse_color = {1, 0.85, 0}

    else
        destroy_pulse_color = {1, 1, 1}
    end 

    destroy_pulse_left = selected_cell.x
    destroy_pulse_right = selected_cell.x + selected_cell.w
    destroy_pulse_top = selected_cell.y
    destroy_pulse_bottom = selected_cell.y + selected_cell.h

    -- Each edge of the destroyed block gets its own travel limits.
    -- This is necessary because the first and last rows contain only 4 cells.
    local top_left = destroy_pulse_left
    local top_right = destroy_pulse_right
    local bottom_left = destroy_pulse_left
    local bottom_right = destroy_pulse_right
    local left_top = destroy_pulse_top
    local left_bottom = destroy_pulse_bottom
    local right_top = destroy_pulse_top
    local right_bottom = destroy_pulse_bottom

    for _, grid_cell in ipairs(grid_table) do
        local grid_cell_right = grid_cell.x + grid_cell.w
        local grid_cell_bottom = grid_cell.y + grid_cell.h

        -- Cells that share the destroyed block's top grid line.
        if grid_cell.y == destroy_pulse_top
        or grid_cell_bottom == destroy_pulse_top then
            top_left = math.min(top_left, grid_cell.x)
            top_right = math.max(top_right, grid_cell_right)
        end

        -- Cells that share the destroyed block's bottom grid line.
        if grid_cell.y == destroy_pulse_bottom
        or grid_cell_bottom == destroy_pulse_bottom then
            bottom_left = math.min(bottom_left, grid_cell.x)
            bottom_right = math.max(bottom_right, grid_cell_right)
        end

        -- Cells that share the destroyed block's left grid line.
        if grid_cell.x == destroy_pulse_left
        or grid_cell_right == destroy_pulse_left then
            left_top = math.min(left_top, grid_cell.y)
            left_bottom = math.max(left_bottom, grid_cell_bottom)
        end

        -- Cells that share the destroyed block's right grid line.
        if grid_cell.x == destroy_pulse_right
        or grid_cell_right == destroy_pulse_right then
            right_top = math.min(right_top, grid_cell.y)
            right_bottom = math.max(right_bottom, grid_cell_bottom)
        end
    end

    destroy_pulse_top_left_distance = destroy_pulse_left - top_left
    destroy_pulse_top_right_distance = top_right - destroy_pulse_right
    destroy_pulse_bottom_left_distance = destroy_pulse_left - bottom_left
    destroy_pulse_bottom_right_distance = bottom_right - destroy_pulse_right

    destroy_pulse_left_up_distance = destroy_pulse_top - left_top
    destroy_pulse_left_down_distance = left_bottom - destroy_pulse_bottom
    destroy_pulse_right_up_distance = destroy_pulse_top - right_top
    destroy_pulse_right_down_distance = right_bottom - destroy_pulse_bottom

    destroy_pulse_distance = 0
    destroy_pulse_active = true

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
    blocks_destroyed = blocks_destroyed + 1

    save_data.statistics.gameplay.bad_blocks_destroyed = 
              save_data.statistics.gameplay.bad_blocks_destroyed + 1
    save_game_data()


    level_up()
end
