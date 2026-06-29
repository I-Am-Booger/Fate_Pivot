function destroy_all_bad_blocks()
    local blocks_to_destroy = {}
    
    for i, cell in ipairs(grid_table) do
        if cell.occupied == true and cell.owner == "bad" then
            table.insert(blocks_to_destroy, cell)
        end
    end 

    for i = 1, #blocks_to_destroy do 
        local cell = blocks_to_destroy[i]

        cell.occupied = false
        cell.owner = nil
        cell.color = nil
        cell.button = nil

        block_destroyed = block_destroyed + 1
        add_score(10)
    end
end 