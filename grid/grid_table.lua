--[[ This is the file to buid the grid to hold the block 
and your blocks ]]
local x = borderX -- easier to read 
local y = borderY
local c = cell
local id = 1

grid_table = {}


-- Grid blocks makes the line of blocks 
function grid_blocks(num, x, y)
    
    for i = 1, num do
        local gt = {id = id, x = x , y = y, w = c, h = c, 
        occupied = false, owner = nil, color = nil, button = nil }     
        
        table.insert(grid_table, gt)
        id = id + 1
        x = x + c
    end  
end 

--[[ building_the_grid uses grid-blocks to draw the blocks and then repositions 
     the blocks with a new cordanence 
]]

function building_the_grid()  

    grid_blocks(4, x, y)
    x = x - c
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

for i, cellData in ipairs(grid_table) do
    print(i, cellData.x, cellData.y)
end

function draw_block() -- we are felling in the blocks to create the player inside of them
    for i, cellData in ipairs(grid_table) do 
        if cellData.occupied == true then -- once it is true it draws a block
    
        if cellData.color == "blue" then
            love.graphics.setColor(0,0,1)
        elseif cellData.color == "green" then
            love.graphics.setColor(0,1,0)
        elseif cellData.color == "red" then
            love.graphics.setColor(1,0,0)
        elseif cellData.color == "yellow" then
            love.graphics.setColor(1,1,0)
        end
  
        love.graphics.rectangle("fill", cellData.x, cellData.y, cellData.w, cellData.h)
     
        end 
    end
end 


