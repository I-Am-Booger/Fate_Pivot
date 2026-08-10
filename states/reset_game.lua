function reset_game()
    score = 0
    penalty = 0
    level = 1
    blocks_destroyed = 0
    blocks_to_next_level = 7

    player_timer_max = base_player_timer
    player_timer = player_timer_max

    bad_timer_max = base_bad_timer_max
    bad_timer = bad_timer_max

    combo_count = 0
    combo_made = 0
    last_destroyed_color = nil

    current_player_cell = nil
    current_fate_cell = nil
    selected_cell = nil

    fate_timer = 5
    fate_spawn_timer = love.math.random(20, 50)

    spawns_near_bad = 0

    freeze_time_active = false
    freeze_time_timer = 0

    run_timer = 0

    for i, cell_data in ipairs(grid_table) do
        cell_data.occupied = false
        cell_data.owner = nil
        cell_data.color = nil
        cell_data.button = nil
    end
end