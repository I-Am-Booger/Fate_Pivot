--[[
      1. bad_blockColors contains the color codes that can be called by the table
      2. function spawn_bad_block() gets the function get_random_empty_block from spawning_blocks 
         and it randomly selects a color from bad_blockColors and changes the properties to make 
         it a bad block returning the block to the grid
]]


bad_blockColors = {
    "green",
    "red",
    "yellow",
    "blue"
}

function spawn_bad_block()
    local cell = get_random_empty_block()

    local randomColor = bad_blockColors[love.math.random(1, #bad_blockColors)]
    cell.occupied = true
    cell.owner = "bad"
    cell.color = randomColor

    return cell
end 