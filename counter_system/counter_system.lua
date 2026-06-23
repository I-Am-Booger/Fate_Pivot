function count_bad_blocks()
    local count = 0

    for i, cell in ipairs(grid_table) do
        if cell.owner == "bad" then 
            count = count + 1
        end
    end

    return count 
end 

function update_occupancy_timer()
    local bad_count = count_bad_blocks()

    local level_timer = base_player_timer - ((level - 1) * 0.10)

    local occupancy_penalty = level * bad_count * 0.03
    player_timer_max = level_timer - occupancy_penalty

    player_timer_max = math.max(0.5, player_timer_max)
end 