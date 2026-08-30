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

                    local scythe_angle = math.rad(death_fate_spawn_count * 30)

                    local scythe_center_x = cell_data.x + cell / 2
                    local scythe_center_y = cell_data.y + cell / 2

                    love.graphics.draw(death_block, cell_data.x, cell_data.y - 1, 0, block_x, block_y)
                    love.graphics.draw(clock_image, clock_x, clock_y, 0, clock_scale_x, clock_scale_y) 
                    love.graphics.draw(scythe_image, scythe_center_x, scythe_center_y, scythe_angle, scythe_scale_x, scythe_scale_y, scythe_image:getWidth() / 2, scythe_image:getHeight() / 2)

                elseif cell_data.color == "justice" then
                
                local justice_scale_x = button_x * 1.25
                local justice_scale_y = button_y * 1.25

                local justice_image

                if justice_resolving == true then
                    justice_image = scale2_image

                    elseif justice_fate_timer > 2 then
                        justice_image = scale1_image

                    elseif justice_fate_timer > 1 then
                        justice_image = scale2_image

                    else
                        justice_image = scale3_image
                end

                local justice_w = justice_image:getWidth() * justice_scale_x
                local justice_h = justice_image:getHeight() * justice_scale_y

                local justice_x = cell_data.x + (cell - justice_w) / 2
                local justice_y = cell_data.y + (cell - justice_h) / 2

                love.graphics.draw(justice_block, cell_data.x, cell_data.y - 1, 0, block_x, block_y)
                love.graphics.draw(justice_image, justice_x, justice_y, 0, justice_scale_x, justice_scale_y)    

                elseif cell_data.color == "lovers" then
                    local lovers_sway = math.sin(lovers_animation_timer * 2.5) * 0.04
                    local lovers_pulse = 1 + math.sin(lovers_animation_timer * 3.0) * 0.015

                    local lovers_scale_x = block_x * 0.79 * lovers_pulse
                    local lovers_scale_y = block_y * 0.79 * lovers_pulse

                    local lovers_center_x = cell_data.x + cell / 2
                    local lovers_center_y = cell_data.y + cell / 2

                    love.graphics.draw(lovers_block, lovers_center_x, lovers_center_y, lovers_sway, lovers_scale_x, lovers_scale_y, lovers_block:getWidth() / 2, lovers_block:getHeight() / 2)



                    elseif cell_data.color == "devil" then 
                        love.graphics.draw(devil_block, cell_data.x, cell_data.y - 1, 0, block_x, block_y)
                        local devil_scale_x = cell / devil_image:getWidth()

                        local devil_scale_y = cell / devil_image:getHeight()
                        love.graphics.draw(devil_image, cell_data.x, cell_data.y, 0, devil_scale_x, devil_scale_y)
                        

                        local arrow_scale_x = cell / devil_arrows:getWidth()
                        local arrow_scale_y = cell / devil_arrows:getHeight()

                        local arrow_sway = math.sin((10 - devil_fate_timer) * 2.5) * 0.1
                        local arrow_center_x = cell_data.x + cell / 2
                        local arrow_center_y = cell_data.y + cell / 2

                        love.graphics.draw(devil_arrows, arrow_center_x, arrow_center_y, arrow_sway, arrow_scale_x, arrow_scale_y, devil_arrows:getWidth() / 2, devil_arrows:getHeight() / 2)
                        
        
                    elseif cell_data.color == "sun" then
                        love.graphics.draw(sun_block, cell_data.x, cell_data.y - 1, 0, block_x, block_y )

                    local glow_wave = math.sin((12 - sun_fate_timer) * 3)
                    local glow_size = cell * (0.88 + glow_wave * 0.04)

                    local glow_alpha = 0.38 + glow_wave * 0.10
                    local glow_scale_x = glow_size / sun_glow:getWidth()
                    local glow_scale_y = glow_size / sun_glow:getHeight()
                    local glow_center_x = cell_data.x + cell / 2
                    local glow_center_y = cell_data.y + cell / 2 - 1

                    love.graphics.setColor(1, 1, 1, glow_alpha)
                    love.graphics.draw(sun_glow, glow_center_x, glow_center_y, 0, glow_scale_x, glow_scale_y, sun_glow:getWidth() / 2, sun_glow:getHeight() / 2)
                    love.graphics.setColor(1, 1, 1, 1)


                    local sun_size = cell * 0.78
                    local sun_scale_x = sun_size / sun_image:getWidth()
                    local sun_scale_y = sun_size / sun_image:getHeight()

                    local sun_center_x = cell_data.x + cell / 2
                    local sun_center_y = cell_data.y + cell / 2 - 1

                    local sun_angle = math.rad(sun_fate_destroy_count * -30)

                    love.graphics.draw(sun_image, sun_center_x, sun_center_y, sun_angle, sun_scale_x, sun_scale_y, sun_image:getWidth() / 2, sun_image:getHeight() / 2
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

