function game_over()
    game_state = "game_over"
end 

function start_board_death()
    if board_death_active == true then
        return
    end

    board_death_active = true
    board_death_timer = 1.0

    for i, cell in ipairs(grid_table) do
        if cell.occupied == true then
            start_block_destruction_effect(cell)
            
            cell.occupied = false
            cell.owner = nil
            cell.color = nil
            cell.button = nil
        end
    end
end

function update_board_death(dt)
    if board_death_active == false then
        return
    end

    board_death_timer = board_death_timer - dt

    if board_death_timer <= 0 then
        board_death_active = false
        game_over()
    end
end

function draw_game_over()
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.setFont(big_font)

    love.graphics.printf(text[current_language].game_over, 0, 400, design_width, "center")
    love.graphics.setFont(font)

    if input_device == "keyboard" then
        love.graphics.printf(text[current_language].press_enter_continue, 0, 470, design_width, "center")
    else
        love.graphics.printf(text[current_language].press_start_continue, 0, 470, design_width, "center")
    end
end