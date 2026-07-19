function yellow_combo()
    local yellow_bad = {}
        
        for i, cell in ipairs(grid_table) do
            if cell.occupied == true and cell.owner == "bad" then 
                table.insert(yellow_bad, cell)     
            end     
        end                                                                       

        for i = 1, 6 do
            if #yellow_bad == 0 then
                break
            end

            local randomIndex = love.math.random(1, #yellow_bad)
            local cell = yellow_bad[randomIndex]

            cell.occupied = false
            cell.owner = nil
            cell.color = nil
            cell.button = nil

            blocks_destroyed = blocks_destroyed + 1
            add_score(10)

            table.remove(yellow_bad, randomIndex)
    
        end
end
