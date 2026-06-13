--[[ This is the file to buid the grid to hold the block 
and your blocks ]]
local x = borderX -- easier to read 
local y = borderY
local c = cell
local id = 1

grid_table = {}

function grid_blocks(num, x, y)
    
    for i = 1, num do
        local gt = {id = id, x = x , y = y, w = c, h = c, 
        color = nil, occupied = false, block = nill, owner = nil}     
        table.insert(grid_table, gt)
        id = id + 1
        x = x + c
    end  

end 

function building_the_grid()  
    x = x + c
    grid_blocks(4, x, y)
    y = y + c
    grid_blocks(6, x, y)
    y = y + c
    grid_blocks(6, x, y)
    y = y + c
    grid_blocks(6, x, y)
    y = y + c
    grid_blocks(6, x, y)
    x = x + c
    y = y + c
    grid_blocks(4, x ,y)
end 

