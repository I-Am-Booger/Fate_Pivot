--[[ 
        1. This is the file to buid the grid to hold the cell info
        2. x, y, amd c are short hand for dimensions. id = 1 as a shorthand for incrmention        
        3. grid_table hold a dictionary type list with the info for each cell in the grid 
        4. grid blocks makes a line of blocks()
        5.  building_the_grid() takes gridblocks draws a line of blocks and then changes the 
            cordanance for the next time grid blocks is called  
]]

local x = borderX 
local y = borderY
local c = cell
local id = 1

grid_table = {}

function grid_blocks(num, x, y, row)
    
    for i = 1, num do
        local gt = {id = id, x = x , y = y, w = c, h = c, 
        occupied = false, owner = nil, color = nil, button = nil, row = row, col = i}     
        
        table.insert(grid_table, gt)
        id = id + 1
        x = x + c
    end  
end 

function building_the_grid()  

    grid_blocks(4, x, y, 1)
    x = x - c
    y = y + c
    grid_blocks(6, x, y, 2)
    y = y + c
    grid_blocks(6, x, y, 3)
    y = y + c
    grid_blocks(6, x, y, 4)
    y = y + c
    grid_blocks(6, x, y, 5)
    x = x + c
    y = y + c
    grid_blocks(4, x ,y, 6)
end 




