require("controls/controller")
require("controls/keyboard")


function move_selector(move)

    local targetX = currentPlayerCell.x
    local targetY = currentPlayerCell.y

    if move == "up" then targetY = currentPlayerCell.y - cell end 
    if move == "down" then targetY = currentPlayerCell.y + cell end 
    if move == "left" then targetX = currentPlayerCell.x - cell end 
    if move == "right" then targetX = currentPlayerCell.x + cell end 

    for i, cellData in ipairs(grid_table) do
        if cellData.x == targetX and cellData.y == targetY then
            selectedCell = cellData
            return             
        end 
    end
end 

function destroy_player()
    if currentPlayerCell then
        
        currentPlayerCell.occupied = false
        currentPlayerCell.owner = nil
        currentPlayerCell.color = nil
        currentPlayerCell.button = nil
    
    end

    currentPlayerCell = nil

    spawn_player()
end 

function destroy_bad_block(buttonPressed)
    if selectedCell == nil then return end 
    if selectedCell.owner ~= "bad" then return end 

    selectedCell.occupied = false
    selectedCell.owner = nil
    selectedCell.color = nil
    selectedCell.button = nil

    selectedCell = currentPlayerCell
end 