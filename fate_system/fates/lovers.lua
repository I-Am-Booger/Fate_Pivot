function lovers()
    lovers_fate_active = true
    lovers_fate_uses = 8

    lovers_red = 0
    lovers_blue = 0
    lovers_green = 0
    lovers_yellow = 0

    lovers_fate_cell = current_fate_cell

    lovers_fate_cell.owner = "lovers"
    lovers_fate_cell.color = "lovers"
    lovers_fate_cell.button = nil
    lovers_fate_cell.occupied = true
end

function lovers_destroy_random_block()
    if lovers_fate_active == false then
        return
    end

    if lovers_fate_uses <= 0 then
        return
    end

    local possible_blocks = {}

    for i, cell in ipairs(grid_table) do
        if cell.occupied == true
        and cell.owner == "bad" then

            table.insert(possible_blocks, cell)
        end
    end

    if #possible_blocks == 0 then
        return
    end

    local random_index = love.math.random(1, #possible_blocks)
    local cell = possible_blocks[random_index]

    local destroyed_color = cell.color

    if destroyed_color == "red" then
        lovers_red = lovers_red + 1

        elseif destroyed_color == "blue" then
        lovers_blue = lovers_blue + 1

    elseif destroyed_color == "green" then
        lovers_green = lovers_green + 1

    elseif destroyed_color == "yellow" then
        lovers_yellow = lovers_yellow + 1
    end

    save_data.statistics.gameplay.bad_blocks_destroyed = save_data.statistics.gameplay.bad_blocks_destroyed + 1


    start_block_destruction_effect(cell)

    cell.occupied = false
    cell.owner = nil
    cell.color = nil
    cell.button = nil

    lovers_fate_uses = lovers_fate_uses - 1


    if lovers_red >= 4 then
        lovers_red = 0
        activate_combo("red")

    elseif lovers_blue >= 4 then
        lovers_blue = 0
        activate_combo("blue")

    elseif lovers_green >= 4 then
        lovers_green = 0
        activate_combo("green")

    elseif lovers_yellow >= 4 then
        lovers_yellow = 0
        activate_combo("yellow")
    end
    
    if lovers_fate_uses <= 0 then
        if lovers_fate_cell ~= nil then
            start_block_destruction_effect(lovers_fate_cell)

            lovers_fate_cell.occupied = false
            lovers_fate_cell.owner = nil
            lovers_fate_cell.color = nil
            lovers_fate_cell.button = nil

            if current_fate_cell == lovers_fate_cell then
                current_fate_cell = nil
            end

            lovers_fate_cell = nil
        end

        lovers_fate_active = false
    end

end