function blue_combo()

    for i, cell in ipairs(grid_table) do
        if cell.x == currentPlayerCell.x and cell.owner == "bad" then
            cell.occupied = false
            cell.owner = nil
            cell.color = nil
            cell.button = nil

            block_destroyed = block_destroyed + 1
            add_score(10)
        end
    end
end