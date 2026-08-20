function draw_block() -- This is the code to filling in the blocks of the grid
    for i, cell_data in ipairs(grid_table) do 
        if cell_data.occupied == true then -- once it is true it draws a block
            local drawScaleX = block_x
            local drawScaleY = block_y
 
            if cell_data.owner == "player" then -- player pulse block
                local pulse_speed = 1.4
                local pulse_amount = 0.004
                local pulse = 1 + math.sin(player_pulse * pulse_speed) * pulse_amount



                drawScaleX = block_x * pulse
                drawScaleY = block_y * pulse
            end
                ------------------------------------------------------------------------------
            if cell_data.color == "white" then -- Player Block Color
                local player_draw_w = cell * (drawScaleX / block_x)
                local player_draw_h = cell * (drawScaleY / block_y)
                local player_draw_x = cell_data.x - (player_draw_w - cell) / 2
                local player_draw_y = cell_data.y - (player_draw_h - cell) / 2 - 1

                love.graphics.draw(player_image, player_draw_x, player_draw_y, 0, player_draw_w / player_image:getWidth(), player_draw_h / player_image:getHeight())
                love.graphics.draw(player_diamond, player_draw_x, player_draw_y, 0, player_draw_w / player_image:getWidth(), player_draw_h / player_image:getHeight())
                love.graphics.draw(player_diamond_r, player_draw_x, player_draw_y, 0, player_draw_w / player_image:getWidth(), player_draw_h / player_image:getHeight())
                
                elseif cell_data.color == "death" then
                    local clock_scale_x = button_x * 1.35
                    local clock_scale_y = button_y * 1.35

                    local clock_w = clock_image:getWidth() * clock_scale_x
                    local clock_h = clock_image:getHeight() * clock_scale_y

                    local clock_x = cell_data.x + (cell - clock_w) / 2
                    local clock_y = cell_data.y + (cell - clock_h) / 2

                    local scythe_scale_x = button_x * 1.15
                    local scythe_scale_y = button_y * 1.15

                    local scythe_w = scythe_image:getWidth() * scythe_scale_x
                    local scythe_h = scythe_image:getHeight() * scythe_scale_y

                    local scythe_x = cell_data.x + (cell - scythe_w) / 2
                    local scythe_y = cell_data.y + (cell - scythe_h) / 2

                    local scythe_angle = math.rad(death_fate_spawn_count * 30)

                    local scythe_center_x = cell_data.x + cell / 2
                    local scythe_center_y = cell_data.y + cell / 2

                    love.graphics.draw(death_block, cell_data.x, cell_data.y - 1, 0, block_x, block_y)
                    love.graphics.draw(clock_image, clock_x, clock_y, 0, clock_scale_x, clock_scale_y) 
                    love.graphics.draw(scythe_image, scythe_center_x, scythe_center_y, scythe_angle, scythe_scale_x, scythe_scale_y, scythe_image:getWidth() / 2, scythe_image:getHeight() / 2
)


            elseif cell_data.color == "blue" then
                love.graphics.draw(blue_block, cell_data.x, cell_data.y - 1, 0, block_x, block_y)
            elseif cell_data.color == "green" then
                love.graphics.draw(green_block, cell_data.x, cell_data.y - 1, 0, block_x, block_y) 
            elseif cell_data.color == "purple" then
                love.graphics.draw(purple_block, cell_data.x, cell_data.y - 1, 0, block_x, block_y) 
            elseif cell_data.color == "red" then
                love.graphics.draw(red_block, cell_data.x, cell_data.y - 1, 0, block_x, block_y) 
            elseif cell_data.color == "yellow" then
                love.graphics.draw(yellow_block, cell_data.x, cell_data.y - 1, 0, block_x, block_y) 
            end 
 
          
            if (cell_data.owner == "bad" or cell_data.owner == "fate") and cell_data.button ~= nil then
                 love.graphics.setColor(1, 1, 1)

                -- right here couldn't I just do an if statement one being for xbox etc  
            
                if cell_data.button == "A" then
                    love.graphics.draw(a_button, cell_data.x + 15, cell_data.y + 16, 0, button_x, button_y)
                elseif cell_data.button == "B" then 
                    love.graphics.draw(b_button, cell_data.x + 15, cell_data.y + 16, 0, button_x, button_y)
                elseif cell_data.button == "X" then
                    love.graphics.draw(x_button, cell_data.x + 15, cell_data.y + 16, 0, button_x, button_y)
                elseif cell_data.button == "Y" then
                    love.graphics.draw(y_button, cell_data.x + 15, cell_data.y + 16, 0, button_x, button_y)
                elseif cell_data.button == "?" then 
                    love.graphics.draw(fate_button, cell_data.x + 15, cell_data.y + 16, 0, button_x, button_y)   
                end 
            end
        end
    end     
end          

