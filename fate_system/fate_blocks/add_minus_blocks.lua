function add_minus_blocks()
    local roll = love.math.random(1, 2)
    
    local amount = love.math.random(1,6)

    if roll <= 1 then
        for i = 1, amount do 
            spawn_bad_block()
        end          
    else
        local bad_blocks = {}

        for i, cell in ipairs(grid_table) do
            if cell.owner == "bad" then
                table.insert(bad_blocks, cell)
            end
        end 

        for i = 1, amount do
            if #bad_blocks == 0 then break end

            local randomIndex = love.math.random(1, #bad_blocks)
            local cell = bad_blocks[randomIndex]

            cell.occupied = false
            cell.owner = nil
            cell.color = nil
            cell.button = nil

            add_score(10)
            block_destroyed = block_destroyed + 1

            table.remove(bad_blocks, randomIndex)
        end 
    end
    
    destroy_fate_block()
end 