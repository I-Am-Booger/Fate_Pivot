require("controls/controller_type")
require("controls/controller")
require("controls/keyboard")
require("controls/handle_destroy")
require("controls/button_click")

function move_selector(move)
    if game_state ~= "play" then return end 
    if currentPlayerCell == nil then return end 

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



