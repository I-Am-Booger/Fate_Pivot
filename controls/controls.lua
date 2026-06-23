require("controls/controller")
require("controls/keyboard")


function move_selector(move)
    if gameState ~= "play" then return end 
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

function destroy_player()
    if currentPlayerCell then
        
        currentPlayerCell.occupied = false
        currentPlayerCell.owner = nil
        currentPlayerCell.color = nil
        currentPlayerCell.button = nil
    
    end

    currentPlayerCell = nil

    spawn_player()
    player_timer = player_timer_max
end 

function destroy_bad_block(buttonPressed)
    if selectedCell == nil then return end 
    if selectedCell.owner ~= "bad" then return end 

    if selectedCell.button ~= buttonPressed then
        spawn_bad_block()
        player_timer = player_timer - 0.10
        
        return
    end

    selectedCell.occupied = false
    selectedCell.owner = nil
    selectedCell.color = nil
    selectedCell.button = nil

    selectedCell = currentPlayerCell
    add_score(1)
    block_destroyed = block_destroyed + 1
    level_up()
end 