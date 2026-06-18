function get_random_empty_block()
    
    local random = {}
    
    for i, cellData in ipairs(grid_table) do
        if cellData.occupied == false then 
            table.insert(random, cellData)
        end 
    end
    
    if #random == 0 then 
        return nil
    end 

    local mathR = love.math.random(1, #random)
    local chosenCell = random[mathR]
    
    return chosenCell
    
end 

-- spawn_bad_block() old name for the funtion get_random_empty_blocks 
-- and must be replaced 

-- Must put this in both spawning_bad blocks and spawning_player.lua
-- chosenCell.occupied = true