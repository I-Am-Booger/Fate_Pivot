function draw_block() -- This is the code to filling in the blocks of the grid
    for i, cellData in ipairs(grid_table) do 
        if cellData.occupied == true then -- once it is true it draws a block
            local drawScaleX = block_x
            local drawScaleY = block_y
 
            if cellData.owner == "player" then -- player pulse block
                local pulse_speed = 1.4
                local pulse_amount = 0.004
                local pulse = 1 + math.sin(playerPulse * pulse_speed) * pulse_amount



                drawScaleX = block_x * pulse
                drawScaleY = block_y * pulse
            end
                ------------------------------------------------------------------------------
            if cellData.color == "white" then -- Player Block Color
                local player_draw_w = cell * (drawScaleX / block_x)
                local player_draw_h = cell * (drawScaleY / block_y)
                local player_draw_x = cellData.x - (player_draw_w - cell) / 2
                local player_draw_y = cellData.y - (player_draw_h - cell) / 2 - 1

                love.graphics.draw(player_image, player_draw_x, player_draw_y, 0, player_draw_w / player_image:getWidth(), player_draw_h / player_image:getHeight())
                love.graphics.draw(player_diamond, player_draw_x, player_draw_y, 0, player_draw_w / player_image:getWidth(), player_draw_h / player_image:getHeight())
                love.graphics.draw(player_dot, player_draw_x, player_draw_y, 0, player_draw_w / player_image:getWidth(), player_draw_h / player_image:getHeight())
           
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
                    love.graphics.draw(a_button, cellData.x + 15, cellData.y + 16, 0, button_x, button_y)
                elseif cellData.button == "B" then 
                    love.graphics.draw(b_button, cellData.x + 15, cellData.y + 16, 0, button_x, button_y)
                elseif cellData.button == "X" then
                    love.graphics.draw(x_button, cellData.x + 15, cellData.y + 16, 0, button_x, button_y)
                elseif cellData.button == "Y" then
                    love.graphics.draw(y_button, cellData.x + 15, cellData.y + 16, 0, button_x, button_y)
                elseif cellData.button == "?" then 
                    love.graphics.draw(fate_button, cellData.x + 15, cellData.y + 16, 0, button_x, button_y)
                end 
            end
        end

         
    end
end 
