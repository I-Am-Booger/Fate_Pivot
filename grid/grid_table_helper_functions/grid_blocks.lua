grid_table = {}

function grid_blocks(num, id, x, y, c, row)
    
    for i = 1, num do
        local gt = {id = id, x = x , y = y, w = c, h = c, 
        occupied = false, owner = nil, color = nil, button = nil, row = row, col = i}     
        
        table.insert(grid_table, gt)
        id = id + 1
        x = x + c
    end  
    
end 