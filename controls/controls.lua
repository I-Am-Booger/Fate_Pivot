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
        remove_score(20)
        player_timer = player_timer - 0.10
        
        return
    end
    
    local destroyed_color = selectedCell.color
    
    selectedCell.occupied = false
    selectedCell.owner = nil
    selectedCell.color = nil
    selectedCell.button = nil

    selectedCell = currentPlayerCell
    
    add_score(10)

    if destroyed_color == last_destroyed_color then 
        combo_count = combo_count + 1
    else
        combo_count = 1
        last_destroyed_color = destroyed_color
    end


    if combo_count == 3 then
        activate_combo(destroyed_color)
        
        combo_count = 0
        last_destroyed_color = nil
    end
    
    print(destroyed_color, combo_count) 

    block_destroyed = block_destroyed + 1

    level_up()
end 

function activate_combo(color)
    if color == "red" then
        for i, cell in ipairs(grid_table) do
            if cell.row == currentPlayerCell.row and cell.owner == "bad" then
                cell.occupied = false
                cell.owner = nil
                cell.color = nil
                cell.button = nil

                add_score(10)
            end
        end

    elseif color == "blue" then
        for i, cell in ipairs(grid_table) do
            if cell.x == currentPlayerCell.x and cell.owner == "bad" then
                cell.occupied = false
                cell.owner = nil
                cell.color = nil
                cell.button = nil

                add_score(10)
            end
        end

    elseif color == "green" then
        player_timer = math.min(player_timer + 3, player_timer_max)
        bad_timer = math.min(bad_timer + 2, bad_timer_max)

    elseif color == "yellow" then       
        local yellow_bad = {}
        
        for i, cell in ipairs(grid_table) do
            if cell.occupied == true and cell.owner == "bad" then 
                table.insert(yellow_bad, cell)     
            end     
        end                                                                       

        for i = 1, 6 do
            if #yellow_bad == 0 then
                break
            end

            local randomIndex = math.random(1, #yellow_bad)
            local cell = yellow_bad[randomIndex]

            cell.occupied = false
            cell.owner = nil
            cell.color = nil
            cell.button = nil

            add_score(10)

            table.remove(yellow_bad, randomIndex)

       
        end

    end
end

















