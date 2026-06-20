function spawn_player()
    local cell = get_random_empty_block()
    
    cell.occupied = true
    cell.owner = "player"
    cell.color = "white"

    currentPlayerCell = cell

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
