require("fate_system/activate_fate")

local fate_symbol = "?"

function spawn_fate_block()
    if current_fate_cell ~= nil then return end 
    
    local cell = get_random_empty_block()

    if cell == nil then return end 

    cell.occupied = true
    cell.owner = "fate"
    cell.color = "purple"
    cell.button = fate_symbol

    current_fate_cell = cell
    fate_timer = 5

    return cell
end


function destroy_fate_block()
    
    if current_fate_cell == nil then return end

    current_fate_cell.occupied = false
    current_fate_cell.owner = nil
    current_fate_cell.color = nil
    current_fate_cell.button = nil

    current_fate_cell = nil
end


function update_fate_timer(dt)
    if current_fate_cell == nil then return end 
    
    fate_timer = fate_timer - dt

    if fate_timer <= 0 then
        destroy_fate_block()
    end
end 

function update_fate_spawn_timer(dt)
    if current_fate_cell ~= nil then return end 
    
    fate_spawn_timer = fate_spawn_timer - dt

    if fate_spawn_timer <= 0 then 
        spawn_fate_block()
        
        if level <= 5 then 
            fate_spawn_timer = love.math.random(20, 50) return 
        
            elseif level <= 10 then
                fate_spawn_timer = love.math.random(18, 45) return
            elseif level <= 15 then 
                fate_spawn_timer = love.math.random(15, 40) return
            else 
                fate_spawn_timer = love.math.random(10, 30) return

        end

    end 
end 