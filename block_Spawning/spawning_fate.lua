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

    if fate_timer <= 0 then 
        destroy_fate_block()
    end   
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

