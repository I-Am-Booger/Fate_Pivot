--[[  
    1. Draws the visible game board.
    2. cells() draws one row of grid cells.
    3. grid() draws the full 32-cell board.
    4. draw_selector() draws the current selection outline.
]]



require("grid/grid_draw_helper_functions/cells")
require("grid/grid_draw_helper_functions/draw_block")
require("grid/grid_draw_helper_functions/draw_selector")
require("grid/grid_draw_helper_functions/grid")

function draw_the_grid()
    local grid_pulse = 1

    if l1_bonus_multiplier > 1 then
        grid_pulse = 1 + math.sin(love.timer.getTime() * 5) * 0.0007 end

    love.graphics.push()
    
    love.graphics.translate(875, 415)    
    love.graphics.scale(grid_pulse, grid_pulse)
    love.graphics.translate(-875, -415)

    
    
    grid() 
    draw_block()
    draw_selector()

    love.graphics.pop()
end 