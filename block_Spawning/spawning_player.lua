--[[
      1. Spawning player uses spawning_blocks.lua to create the blocks 
      2. spawn_player() uses get_random_empty_block() to get a cell and then change properties
      3. destroy_player changes the properties in the current_player_cell and removes them effectivly destroying the piece
         It also respawns the piece to another place by using the spawn_player() and using get_random_empty_block
]]
spawns_near_bad = 0

function spawn_player()
    if current_player_cell ~= nil and current_player_cell.owner == "player" then 
        return current_player_cell end 

    local cell = nil

    -- the counter
    spawns_near_bad = spawns_near_bad + 1 
    
   
    -- the 25% chance 
    if spawns_near_bad == 1 or 
       spawns_near_bad == 2 or 
       spawns_near_bad == 3 then 
        local respawn_roll = love.math.random(1, 100) 
    
        if respawn_roll >= 75 then 
            cell = get_random_near_bad_cell() 
            spawns_near_bad = 0
        end
    end 
    
    -- the 100%
    if spawns_near_bad >= 4 then 
        cell = get_random_near_bad_cell()
        spawns_near_bad = 0
    end 

    if cell == nil then
        cell = get_random_empty_block()
    end

    if cell == nil then
        game_over()
        return
    end 
    
    cell.occupied = true
    cell.owner = "player"
    cell.color = "white"

    current_player_cell = cell
    selected_cell = cell
    return cell   
end 

function get_cell_by_row_col(row, col)
    for i, cell_data in ipairs(grid_table) do     
        if cell_data.row == row and cell_data.col == col then
            return cell_data
        end
    end

    return nil
end 

function cell_touches_bad_block(cell)
    local up = get_cell_by_row_col(cell.row - 1, cell.col)
    local down = get_cell_by_row_col(cell.row + 1, cell.col)
    local left = get_cell_by_row_col(cell.row, cell.col - 1)
    local right = get_cell_by_row_col(cell.row, cell.col + 1)

    if up and up.owner == "bad" then return true end
    if down and down.owner == "bad" then return true end
    if left and left.owner == "bad" then return true end 
    if right and right.owner == "bad" then return true end 

    return false
end 


function get_empty_cells_near_bad()
    local near_bad_cells = {}
    
    for i, cell in ipairs(grid_table) do
        if not cell.occupied and cell_touches_bad_block(cell) then
            table.insert(near_bad_cells, cell)
        end
    end

    return near_bad_cells
end

function get_random_near_bad_cell()
    local near_bad_cells = get_empty_cells_near_bad()

    if #near_bad_cells == 0 then
        return nil
    end

    local randomIndex = love.math.random(1, #near_bad_cells)

    return near_bad_cells[randomIndex]
end
