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
    grid() -- I am not for sure 
    draw_block()
    draw_selector()
end 