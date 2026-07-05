--[[
       1. Shared spawning helper 
       2. Finds one random empty grid cell by checking if occupied in the random table using a for loop 
       3. Player blocks and bad blocks both uuse this 
]]

-- TODO:
-- replace this random spawn with adjacent-to-player spawn logic
function get_random_empty_block()
    local random = {}
    
    for i, cell_data in ipairs(grid_table) do
        if cell_data.occupied == false then 
            table.insert(random, cell_data)
        end 
    end
    
    if #random == 0 then 
        return nil
    end 

    local mathR = love.math.random(1, #random)
    local chosenCell = random[mathR]
    
    return chosenCell    
end 