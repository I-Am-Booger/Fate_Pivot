block_destruction_effects = {}

function start_block_destruction_effect(cell)
    local effect = {
        x = cell.x,
        y = cell.y,
        color = cell.color,
        timer = 0,
        phase = "shrink"
    }

    table.insert(block_destruction_effects, effect)
end

function get_destruction_block_image(color)

    if color == "red" then
        return red_block

    elseif color == "blue" then
        return blue_block

    elseif color == "green" then
        return green_block

    elseif color == "yellow" then
        return yellow_block

    elseif color == "purple" then
        return purple_block

    elseif color == "death" then
        return death_block
    end

    return nil
end

function set_destruction_effect_color(color, alpha)
    if color == "red" then
        love.graphics.setColor(1, 0, 0, alpha)

    elseif color == "blue" then
        love.graphics.setColor(0, 0, 1, alpha)

    elseif color == "green" then
        love.graphics.setColor(0, 1, 0, alpha)

    elseif color == "yellow" then
        love.graphics.setColor(1, 1, 0, alpha)

    elseif color == "purple" then
        love.graphics.setColor(0.8, 0, 1, alpha)

    elseif color == "death" then
        love.graphics.setColor(0.8, 0.8, 0.8, alpha)

    else
        love.graphics.setColor(1, 1, 1, alpha)
    end
end






function draw_block_destruction_effects()

    for i, effect in ipairs(block_destruction_effects) do

        local image = get_destruction_block_image(effect.color)

        if image ~= nil then
            local size = 1

            if effect.phase == "shrink" then
                local progress = effect.timer / 0.06
                size = 1 - (0.10 * progress)

                elseif effect.phase == "expand" then
                    local progress = effect.timer / 0.08
                    size = 0.90 + (0.25 * progress)
            end

         

            if effect.phase == "shrink" or effect.phase == "expand" then
                local scale_x = block_x * size
                local scale_y = block_y * size

                local draw_w = image:getWidth() * scale_x
                local draw_h = image:getHeight() * scale_y

                local draw_x = effect.x + (cell - draw_w) / 2
                local draw_y = effect.y + (cell - draw_h) / 2 - 1

                love.graphics.draw(image, draw_x, draw_y, 0, scale_x, scale_y)
            end


            if effect.phase == "shatter" then
                local alpha = 1 - (effect.timer / 0.6)

                local center_x = effect.x + cell / 2
                local center_y = effect.y + cell / 2

                local triangle_y = center_y - (effect.timer * 800)
                local triangle_y_down = center_y + (effect.timer * 800)
                local triangle_x_left = center_x - (effect.timer * 800)
                local triangle_x_right = center_x + (effect.timer * 800)

                set_destruction_effect_color(effect.color, alpha)

                -- up triangle
                love.graphics.polygon("line", center_x, triangle_y - 15, center_x - 12, triangle_y + 10, center_x + 12, triangle_y + 10)            
                
                -- down triangle
                love.graphics.polygon("line", center_x, triangle_y_down + 15, center_x - 12, triangle_y_down - 10, center_x + 12, triangle_y_down - 10)

                -- left triangle
                love.graphics.polygon("line", triangle_x_left - 15, center_y, triangle_x_left + 10, center_y - 12, triangle_x_left + 10, center_y + 12)

                -- right triangle
                love.graphics.polygon("line", triangle_x_right + 15, center_y, triangle_x_right - 10, center_y - 12, triangle_x_right - 10, center_y + 12)

                love.graphics.setColor(1, 1, 1)
            end
        end
        
    end
end



function update_block_destruction_effects(dt)
    for i = #block_destruction_effects, 1, -1 do
        local effect = block_destruction_effects[i]

        effect.timer = effect.timer + dt

        if effect.phase == "shrink" and effect.timer >= 0.06 then
            effect.phase = "expand"
            effect.timer = 0

            elseif effect.phase == "expand" and effect.timer >= 0.08 then
                effect.phase = "shatter"
                effect.timer = 0
        

            elseif effect.phase == "shatter" and effect.timer >= 0.6 then 
                table.remove(block_destruction_effects, i)
        end
    end
end