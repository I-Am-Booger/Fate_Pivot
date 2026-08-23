function devil()
    devil_fate_active = true
    devil_fate_timer = 10

    devil_fate_cell = current_fate_cell

    devil_fate_cell.owner = "devil"
    devil_fate_cell.color = "devil"
    devil_fate_cell.button = nil
    devil_fate_cell.occupied = true
end

function update_devil_fate(dt)
    if devil_fate_active == false then
        return
    end

    devil_fate_timer = devil_fate_timer - dt

    if devil_fate_timer <= 0 then
        devil_fate_timer = 0

        if devil_fate_cell ~= nil then
            start_block_destruction_effect(devil_fate_cell)

            devil_fate_cell.occupied = false
            devil_fate_cell.owner = nil
            devil_fate_cell.color = nil
            devil_fate_cell.button = nil

            if current_fate_cell == devil_fate_cell then
                current_fate_cell = nil
            end

            devil_fate_cell = nil
        end

        devil_fate_active = false
    end
end