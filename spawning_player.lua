function spawn_bad_block()
    
    local random = {}

    for i, cellData in ipairs(grid_table) do
        if cellData.occupied == false then 
            table.insert(random, cellData)
        end 
    end

    local mathR = love.math.random(1, #random)


    local chosenCell = random[mathR]
    chosenCell.occupied = true

    return chosenCell
    
end 