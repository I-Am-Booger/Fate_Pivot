--[[
      1.controls for the game
]]
 
function move_selector(move)

    local targetX = currentPlayerCell.x
    local targetY = currentPlayerCell.y

    if move == "w" then targetY = currentPlayerCell.y - cell end 
    if move == "s" then targetY = currentPlayerCell.y + cell end 
    if move == "a" then targetX = currentPlayerCell.x - cell end 
    if move == "d" then targetX = currentPlayerCell.x + cell end 

    for i, cellData in ipairs(grid_table) do
        if cellData.x == targetX and cellData.y == targetY then
            selectedCell = cellData
            return             
        end 
    end
end 


function love.keypressed(key)
    if key == "w" then move_selector("w") end
    if key == "s" then move_selector("s") end 
    if key == "a" then move_selector("a") end 
    if key == "d" then move_selector("d") end 

    if key == "r" then destroy_player() end    
end 

