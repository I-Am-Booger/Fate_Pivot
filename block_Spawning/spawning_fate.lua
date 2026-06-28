local fate_symbol = "?"

function spawn_fate_block()
    if currentFateCell ~= nil then return end 
    
    local cell = get_random_empty_block()

    if cell == nil then return end 

    cell.occupied = true
    cell.owner = "fate"
    cell.color = "purple"
    cell.button = fate_symbol

    currentFateCell = cell
    fate_timer = 5

    if fate_timer <= 0 then 
        destroy_fate_block()
    end   
    return cell
end


function destroy_fate_block()
    
    if currentFateCell == nil then return end

    currentFateCell.occupied = false
    currentFateCell.owner = nil
    currentFateCell.color = nil
    currentFateCell.button = nil

    currentFateCell = nil
end


function update_fate_timer(dt)
    if currentFateCell == nil then return end 
    
    fate_timer = fate_timer - dt

    if fate_timer <= 0 then
        destroy_fate_block()
    end
end 


function activate_fate()
    local roll = love.math.random(1, 100)
    local amount = love.math.random(1,6)

    if roll <= 55 then
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