function draw_block() -- we are felling in the blocks to create the player inside of them
    for i, cellData in ipairs(grid_table) do 
        if cellData.occupied == true then -- once it is true it draws a block
    
            if cellData.color == "white" then -- Player Block Color
                love.graphics.draw(player_image, cellData.x, cellData.y - 1, 0, bl_x, bl_y)
            elseif cellData.color == "blue" then
               love.graphics.draw(blue_block, cellData.x, cellData.y - 1, 0, bl_x, bl_y)
            elseif cellData.color == "green" then
                love.graphics.draw(green_block, cellData.x, cellData.y - 1, 0, bl_x, bl_y) 
            elseif cellData.color == "purple" then
                love.graphics.draw(purple_block, cellData.x, cellData.y - 1, 0, bl_x, bl_y) 
            elseif cellData.color == "red" then
                love.graphics.draw(red_block, cellData.x, cellData.y - 1, 0, bl_x, bl_y) 
            elseif cellData.color == "yellow" then
                love.graphics.draw(yellow_block, cellData.x, cellData.y - 1, 0, bl_x, bl_y) 
            end 
             

        -- love.graphics.rectangle("fill", cellData.x, cellData.y, cellData.w, cellData.h)
        
        if (cellData.owner == "bad" or cellData.owner == "fate") and cellData.button ~= nil then
            love.graphics.setColor(1, 1, 1)

            love.graphics.print(cellData.button, cellData.x + 25, cellData.y + 35) end
        end 
    end
end 