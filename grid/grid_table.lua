--[[ 
        1. This is the file to buid the grid to hold the cell info
        2. x, y, amd c are short hand for dimensions. id = 1 as a shorthand for incrmention        
        3. grid_table hold a dictionary type list with the info for each cell in the grid 
        4. grid blocks makes a line of blocks()
        5.  building_the_grid() takes gridblocks draws a line of blocks and then changes the 
            cordanance for the next time grid blocks is called  
]]

require("grid/grid_table_helper_functions/grid_blocks")

local x = borderX 
local y = borderY
local c = cell
local id = 1


function building_the_grid()  

    grid_blocks(4, id, x, y, c, 1)
    x = x - c
    y = y + c
    grid_blocks(6, id, x, y, c, 2)
    y = y + c
    grid_blocks(6, id, x, y, c, 3)
    y = y + c
    grid_blocks(6, id, x, y, c, 4)
    y = y + c
    grid_blocks(6, id, x, y, c, 5)
    x = x + c
    y = y + c
    grid_blocks(4, id, x ,y, c, 6)
end 