function sun()
    sun_fate_destroy_count = 0

    sun_fate_cell = current_fate_cell

    sun_fate_cell.owner = "sun"
    sun_fate_cell.color = "sun"
    sun_fate_cell.button = nil
    sun_fate_cell.occupied = true

    sun_fate_active = true
    sun_fate_timer = 12
    sun_fate_tick = 1
end

function sun_destroy_random_block()
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

    start_block_destruction_effect(cell)

    cell.occupied = false
    cell.owner = nil
    cell.color = nil
    cell.button = nil

    add_score(10)

    save_data.statistics.gameplay.bad_blocks_destroyed =
        save_data.statistics.gameplay.bad_blocks_destroyed + 1
end

function update_sun_fate(dt)
    if sun_fate_active == false then
        return
    end

    sun_fate_timer = sun_fate_timer - dt
    sun_fate_tick = sun_fate_tick - dt

    if sun_fate_tick <= 0 then
        sun_destroy_random_block()

        sun_fate_destroy_count =
            sun_fate_destroy_count + 1

        sun_fate_tick = 1
    end

    if sun_fate_destroy_count >= 12 then
        sun_fate_timer = 0

        if sun_fate_cell ~= nil then
            start_block_destruction_effect(sun_fate_cell)

            sun_fate_cell.occupied = false
            sun_fate_cell.owner = nil
            sun_fate_cell.color = nil
            sun_fate_cell.button = nil

            if current_fate_cell == sun_fate_cell then
                current_fate_cell = nil
            end

            sun_fate_cell = nil
        end

        sun_fate_active = false
        save_game_data()
    end
end