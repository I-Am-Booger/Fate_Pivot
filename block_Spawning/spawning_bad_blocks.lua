bad_blockColors = {
    "green",
    "red",
    "yellow"
}

function spawn_bad_block()
    local cell = get_random_empty_block()

    local randomColor = bad_blockColors[love.math.random(1, #bad_blockColors)]
    cell.occupied = true
    cell.owner = "bad"
    cell.color = randomColor

    return cell
end 