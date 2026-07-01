function draw_block() -- we are felling in the blocks to create the player inside of them
    for i, cellData in ipairs(grid_table) do 
        if cellData.occupied == true then -- once it is true it draws a block
    
            if cellData.color == "white" then -- Player Block Color
                love.graphics.draw(player_image, cellData.x, cellData.y - 1, 0, block_x, block_y)
            elseif cellData.color == "blue" then
               love.graphics.draw(blue_block, cellData.x, cellData.y - 1, 0, block_x, block_y)
            elseif cellData.color == "green" then
                love.graphics.draw(green_block, cellData.x, cellData.y - 1, 0, block_x, block_y) 
            elseif cellData.color == "purple" then
                love.graphics.draw(purple_block, cellData.x, cellData.y - 1, 0, block_x, block_y) 
            elseif cellData.color == "red" then
                love.graphics.draw(red_block, cellData.x, cellData.y - 1, 0, block_x, block_y) 
            elseif cellData.color == "yellow" then
                love.graphics.draw(yellow_block, cellData.x, cellData.y - 1, 0, block_x, block_y) 
            end 
 
          
            if (cellData.owner == "bad" or cellData.owner == "fate") and cellData.button ~= nil then
                 love.graphics.setColor(1, 1, 1)
            
                if cellData.button == "A" then
                    love.graphics.draw(a_button, cellData.x, cellData.y, 0, button_x, button_y)
                elseif cellData.button == "B" then 
                    love.graphics.draw(b_button, cellData.x, cellData.y, 0, button_x, button_y)
                elseif cellData.button == "X" then
                    love.graphics.draw(x_button, cellData.x, cellData.y, 0, button_x, button_y)
                elseif cellData.button == "Y" then
                    love.graphics.draw(y_button, cellData.x, cellData.y, 0, button_x, button_y)
                elseif cellData.button == "?" then 
                    love.graphics.draw(fate_button, cellData.x, cellData.y, 0, button_x, button_y)
                end 
            end
        end

         
    end
end 




-- -- love.graphics.rectangle("fill", cellData.x, cellData.y, cellData.w, cellData.h)

-- if (cellData.owner == "bad" or cellData.owner == "fate") and cellData.button ~= nil then
--     love.graphics.setColor(1, 1, 1)

--     love.graphics.print(cellData.button, cellData.x + 25, cellData.y + 35) end