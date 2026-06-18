function spawn_player()
    local cell = get_random_empty_block()
    
    cell.occupied = true
    cell.owner = "player"
    cell.color = "blue"

    currentPlayerCell = cell

    return cell
end 

