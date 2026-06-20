--[[
      1. Spawning player uses spawning_blocks.lua to create the blocks 
      2. spawn_player() uses get_random_empty_block() to get a cell and then change properties
      3. destroy_player changes the properties in the currentPlayerCell and removes them effectivly destroying the piece
         It also respawns the piece to another place by using the spawn_player() and using get_random_empty_block
]]



function spawn_player()
    local cell = get_random_empty_block()
    
    cell.occupied = true
    cell.owner = "player"
    cell.color = "white"

    currentPlayerCell = cell
    selectedCell = cell

    return cell
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
