function destroy_player()
    local old_player_cell = current_player_cell

    if current_player_cell then
        current_player_cell.occupied = false
        current_player_cell.owner = nil
        current_player_cell.color = nil
        current_player_cell.button = nil
    end

    current_player_cell = nil

    spawn_player(old_player_cell)

    player_timer = player_timer_max
end