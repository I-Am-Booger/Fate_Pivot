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