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

button_symbol = {
    "Y",
    "X",
    "A",
    "B",
}

-- Bad block spawning goal:
-- 1. Try to spawn next to the player block.
-- 2. If no adjacent empty cell is found, spawn anywhere empty.
-- 3. Later: first 3 bad blocks = chance-based adjacency.
-- 4. 4th bad block = guaranteed adjacent if possible.

function spawn_bad_block()
    local cell = get_random_empty_block()

    if cell == nil then 
        game_over()
        return
    end 

    local randomColor  = bad_blockColors[love.math.random(1, #bad_blockColors)]
    local randomSymble = button_symbol[love.math.random(1, #button_symbol)]
    cell.occupied = true
    cell.owner = "bad"
    cell.color = randomColor
    cell.button = randomSymble

    return cell
end 


