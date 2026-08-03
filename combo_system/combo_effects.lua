function activate_combo(color)
    if color == "red" then
        for _, cell in ipairs(grid_table) do
            if cell.row == current_player_cell.row
            and cell.owner == "bad" then

                save_data.statistics.gameplay.bad_blocks_destroyed =
                    save_data.statistics.gameplay.bad_blocks_destroyed + 1

                cell.occupied = false
                cell.owner = nil
                cell.color = nil
                cell.button = nil

                add_score(10)
            end
        end

    elseif color == "blue" then
        for _, cell in ipairs(grid_table) do
            if cell.x == current_player_cell.x
            and cell.owner == "bad" then

                save_data.statistics.gameplay.bad_blocks_destroyed =
                    save_data.statistics.gameplay.bad_blocks_destroyed + 1

                cell.occupied = false
                cell.owner = nil
                cell.color = nil
                cell.button = nil

                add_score(10)
            end
        end

    elseif color == "green" then
        player_timer = math.min(
            player_timer + 3,
            player_timer_max
        )

        bad_timer = math.min(
            bad_timer + 2,
            bad_timer_max
        )

    elseif color == "yellow" then
        local yellow_bad = {}

        for _, cell in ipairs(grid_table) do
            if cell.occupied == true
            and cell.owner == "bad" then
                table.insert(yellow_bad, cell)
            end
        end

        for i = 1, 6 do
            if #yellow_bad == 0 then
                break
            end

            local random_index =
                love.math.random(1, #yellow_bad)

            local cell = yellow_bad[random_index]

            save_data.statistics.gameplay.bad_blocks_destroyed =
                save_data.statistics.gameplay.bad_blocks_destroyed + 1

            cell.occupied = false
            cell.owner = nil
            cell.color = nil
            cell.button = nil

            add_score(10)

            table.remove(yellow_bad, random_index)
        end
    end

    save_game_data()
end