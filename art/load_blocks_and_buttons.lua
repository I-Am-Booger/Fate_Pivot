
function load_blocks_and_buttons()
    player_image = love.graphics.newImage("art/blocks/white_block_t.png")
    blue_block   = love.graphics.newImage("art/blocks/blue_block_t.png")
    green_block  = love.graphics.newImage("art/blocks/green_block_t.png")
    purple_block = love.graphics.newImage("art/blocks/purple_block_t.png")
    red_block  = love.graphics.newImage("art/blocks/red_block_t.png")
    yellow_block  = love.graphics.newImage("art/blocks/yellow_block_t.png")
    bl_x = cell / player_image:getWidth()
    bl_y = cell / player_image:getHeight()
end 