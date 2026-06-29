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