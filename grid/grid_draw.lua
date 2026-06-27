--[[  
    1. Draws the visible game board.
    2. cells() draws one row of grid cells.
    3. grid() draws the full 32-cell board.
    4. draw_selector() draws the current selection outline.
]]

function cells(num, x, y)
    local c = cell
    
    for i = 1, num do             
        love.graphics.rectangle("line", x, y, c, c)
        x = x + c
    end  
end 

function grid() -- 
    local x = borderX
    local y = borderY
    local c = cell
    love.graphics.setColor(1,1,1)
    love.graphics.setLineWidth(4) 
        cells(4, x, y)
        x = x - c
        y = y + c
        cells(6, x, y) 
        y = y + c
        cells(6, x, y)
        y = y + c
        cells(6, x, y)
        y = y + c
        cells(6, x, y) 
        x = x + c
        y = y + c
        cells(4, x, y) 
end 

function draw_selector()
    if selectedCell == nil then 
        return 
    end 

    love.graphics.setColor(1,0,1)
    love.graphics.setLineWidth(8)

    love.graphics.rectangle("line", selectedCell.x, selectedCell.y, selectedCell.w, selectedCell.h)
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
        elseif cellData.color == "white" then
            love.graphics.setColor(1,1,1)
        elseif cellData.color == "purple" then
            love.graphics.setColor(0.6, 0, 1)       
        end
  
        love.graphics.rectangle("fill", cellData.x, cellData.y, cellData.w, cellData.h)
        
        if (cellData.owner == "bad" or cellData.owner == "fate") and cellData.button ~= nil then
            love.graphics.setColor(1, 1, 1)

            love.graphics.print(cellData.button, cellData.x + 25, cellData.y + 35) end
        end 
    end
end 