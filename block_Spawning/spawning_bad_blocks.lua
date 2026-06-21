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

button_symble = {
    "triangle",
    "x",
    "square",
    "circle"
}


function spawn_bad_block()
    local cell = get_random_empty_block()

    local randomColor  = bad_blockColors[love.math.random(1, #bad_blockColors)]
    local randomSymble = button_symble[love.math.random(1, #button_symble)]
    cell.occupied = true
    cell.owner = "bad"
    cell.color = randomColor
    cell.button = randomSymble

    return cell
end 