function red_combo()
    for i, cell in ipairs(grid_table) do
        if cell.row == current_player_cell.row and cell.owner == "bad" then
            cell.occupied = false
            cell.owner = nil
            cell.color = nil
            cell.button = nil

            blocks_destroyed = blocks_destroyed + 1
            add_score(10)
        end
    end
end