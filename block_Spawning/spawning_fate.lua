require("fate_system/activate_fate")

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

